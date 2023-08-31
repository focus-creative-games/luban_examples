
#include "pb_schemas/schema.pb.h"

#include <fstream>
#include "google/protobuf/io/zero_copy_stream_impl.h"
#include "google/protobuf/json/json.h"
using namespace google::protobuf;
using namespace google::protobuf::json;

int main(){
	std::ifstream file("pb_datas/item_tbitem.bytes", std::ios::binary);
	if(file.is_open())
	{
		io::IstreamInputStream input_stream(&file);
		io::CodedInputStream input(&input_stream);

		cfg::ItemTbItem tblItem;
		if(tblItem.MergeFromCodedStream(&input))
		{
			auto table = tblItem.mutable_data_list();
			for each(auto one in *table)
			{
				std::string str;
				MessageToJsonString(one, &str);
				std::cout <<  str << std::endl << std::endl;
			}
			
		}
		
		file.close();
	}
	
    return 0;
}
namespace Precise.WorkFlow.Dtos
{
    public class FlowInstanceEditDto
    {
        public string Id { get; set; }
        
        public string InstanceSchemeId { get; set; }
        
        public string Code { get; set; }
        
        public string CustomName { get; set; }

        public string ActivityId { get; set; }
        
        public int? ActivityType { get; set; }
        
        public string ActivityName { get; set; }
        
        public string PreviousId { get; set; }
        
        public string SchemeContent { get; set; }
        
        public string SchemeId { get; set; }
        
        public string DbName { get; set; }
        
        public int FrmType { get; set; }
        
        public string FrmContentData { get; set; }
        
        public string FrmContentParse { get; set; }
        
        public string FrmId { get; set; }
        
        public string SchemeType { get; set; }
        
        public bool IsActive { get; set; }
        
        public int FlowLevel { get; set; }
        
        public string Description { get; set; }
        
        public int IsFinish { get; set; }
        
        public string MakerList { get; set; }
        
        public string FrmData { get; set; }
    }
}
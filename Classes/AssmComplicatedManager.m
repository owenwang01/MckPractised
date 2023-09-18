






#import "AssmComplicatedManager.h"
#import "DstrctiblDeftSubsistModel.h"
#import "TrivialityHomecomManager.h"

@implementation AssmComplicatedManager


+ (BOOL)fflineRosebudHauteur:(NSMutableArray *)comeRgumnt {
    BOOL rrrngNear = NO;
    for (DstrctiblDeftSubsistModel *model in comeRgumnt) {
        if (model.uid.intValue == [FryAllowanceKnapsackModel sharedInstance].uid.intValue && model.master.intValue == 1) {
            return YES;
        }
    }
    return rrrngNear;
}


+ (void)fiscallyKulfiTosser:(UILabel *)wishSuggst andString:(NSString *)subjctBack
{
    wishSuggst.textColor = [UIColor grayColor];
    wishSuggst.textAlignment = NSTextAlignmentCenter;
    NSMutableAttributedString *costRcursv = [[NSMutableAttributedString alloc] initWithString:subjctBack];
    [costRcursv addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, costRcursv.string.length)];
    wishSuggst.attributedText = costRcursv;
}


+ (void)selfRetroactiveSunny:(void(^)(bool code))block andFirstPentiumPool:(UIView *)ncrsTone andIndntAsteriskTalk:(UIViewController *)plusDlmt {
    UIAlertController *prcssPart = [UIAlertController alertControllerWithTitle:MUNICIPAL_INDISCRETION(880) message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *muntnSide = [UIAlertAction actionWithTitle:MUNICIPAL_INDISCRETION(282) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if(block) {
            block(1);
        }
    }];
    [prcssPart addAction:muntnSide];
    UIAlertAction *prsrvCash = [UIAlertAction actionWithTitle:MUNICIPAL_INDISCRETION(170) style:UIAlertActionStyleDefault handler:nil];
    [prcssPart addAction:prsrvCash];

    UIPopoverPresentationController *seekStrsk = prcssPart.popoverPresentationController;
    if (seekStrsk){
        seekStrsk.sourceView = ncrsTone;
        seekStrsk.sourceRect = CGRectMake(PLYHUS_REGULARIZE *0.5 - 100, PERFUNCTORILY_CONCOCTION, 200, 250);
        seekStrsk.permittedArrowDirections = UIPopoverArrowDirectionDown;
    }
    [plusDlmt presentViewController:prcssPart animated:YES completion:nil];
}

+ (void)nerlgyCorkerAmoeba:(UIViewController *)rsrvWare
{
    NSMutableDictionary *restMnfst = [NSMutableDictionary dictionary];
    [restMnfst setObject:[FryAllowanceKnapsackModel sharedInstance].uid forKey:@"uid"];
    [restMnfst setObject:[FryAllowanceKnapsackModel sharedInstance].rightReceiveHere forKey:REMAND_WLESS((@[@423, @426, @421]))];
    [FryReassessmentTool masterJuristSojourn];
    
    [[TrivialityHomecomManager typhnProspectusDoor] post:GRDRN_STERN(strikEllipsisBase) param:restMnfst result:^(id result) {
        [FryReassessmentTool arsnHauteurAutomate];
        if ([[result objectForKey:@"243"] integerValue] == 200 ) {
            
            [FryAllowanceKnapsackModel sharedInstance].chicMismatchFace = @"0";
            [FryAllowanceKnapsackModel sharedInstance].rightReceiveHere = @"0";
            [FryAllowanceKnapsackModel sharedInstance].cttDocumentWarn = @"0";
            [FryAllowanceKnapsackModel favelaTankerBurgher];
            
            [MckEngagedSwollen barefacedAwakeTested].ntilIntegrateGreyBlock();
            [FryReassessmentTool favelaLashMalevolent:MUNICIPAL_INDISCRETION(746)];
            [rsrvWare.navigationController popViewControllerAnimated:YES];
        }
        
    }];
}

@end
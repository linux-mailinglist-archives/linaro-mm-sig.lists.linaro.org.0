Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 611229166A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Jun 2024 13:52:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8E8B943D12
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Jun 2024 11:52:42 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2050.outbound.protection.outlook.com [40.107.94.50])
	by lists.linaro.org (Postfix) with ESMTPS id C50DF40F0B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Jun 2024 11:52:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=t7o2vWC3;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oEDNzt95BwLt+NwAx/vVgpV8jwWQ94ROVpsc1YuoviuBNo+MclkHIA9AwnLorAOLPKtOBNesvt2zy+o6I9yoDDKAmkkuMQz+NiInVebmJnoE2YJUyE8tnc+jeA5Az0mzt/mhtluPfb5u0AakK36nsn0Mup67/SvL+LYS9H65Dqt7+JLxa6B5kegr+4v/H+tO1tw8dBIxG82uIHaegHvtC9Zh5uLXphOUu/sAwhk+JewG9enjDmJbngZKa/c56amLtU2QkOXxAe179ryx0v+KP5dNmhDmcMc30CzKX52WPdkrdooYEdHY7jYgqq+rBh1Z3v+VAFVCfLhVJPti6U8UUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aWEsh4IGr1Be8KglAj7eWfCOs1huXwPWACTXkqi/OW0=;
 b=YlTgEiv+TyU7JrGLh5CAR4OIO2Hs6zN0tOTl9MIlC1Fxjfz85A51+oY89S+RYhQFFZp3egIfG1RPzvDmXuv2d/CknSD+M2vTWVZLTTK5Kp7VtjUQ0vk60mmVFGm8nMLhcQEcBD0RhORE+vICKq+WT/PbsEw7qh884k6CD6d+wRpoIZOLOTIo2zf7xl568WVWZmg0Mbj62FTxUyN9mtbf6oe5DjUMmS4nj9J9n45z+jUrrhN1V5pqCvhvasV8FsnDe30WykMRF4+KFuaLMYiabMo9FbjeTK+Td9uKxW7GPM2iEOmeMSl/qAnU/NsRRJVV6nYhjKA5kHiDTJJfUFP9Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aWEsh4IGr1Be8KglAj7eWfCOs1huXwPWACTXkqi/OW0=;
 b=t7o2vWC3vThv0nLFJVCE4LRyZw5uMU0esq78jRG5Q4vayRLQG+pByK8H/tvMsyZ63AVvtHk+jO591uYGWluH91GF6y8fJHT2kLNmi7n9zh1ure6PWBm42V3H/cvcr7p6BGqGPLHtk/m69ObHoHm1s1Ka2sklHE9R5NAcMM4awjs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by LV8PR12MB9155.namprd12.prod.outlook.com (2603:10b6:408:183::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Tue, 25 Jun
 2024 11:52:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 11:52:31 +0000
Message-ID: <3104b765-5666-44e4-8788-f1b1b296fe17@amd.com>
Date: Tue, 25 Jun 2024 13:52:21 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
References: <20240515112308.10171-1-yong.wu@mediatek.com>
 <20240515112308.10171-3-yong.wu@mediatek.com>
 <98721904-003d-4d0d-8cfe-1cecdd59ce01@amd.com>
 <779ce30a657754ff945ebd32b66e1c644635e84d.camel@mediatek.com>
 <cef8f87d-edab-41d8-8b95-f3fc39ad7f74@amd.com>
 <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <1050c44512374031d1349b5dced228d0efc3fbde.camel@mediatek.com>
X-ClientProxiedBy: FR4P281CA0411.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d0::10) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|LV8PR12MB9155:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cdb57fb-80a7-426a-07df-08dc950d4b9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|7416011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eEZMZ2h6MHlqblRqTitzWE9ETUF0bVFudVgrM094NGFBMTBMSnR3dEZlUktH?=
 =?utf-8?B?UnpvVmVCeFhEQ1o0c2ROTUNKMjJrN2hHS21TMnNEZ1M1YlZmQXd0R3FFc0h5?=
 =?utf-8?B?WHdiQ3lhU0toUE9qU01RQm1BYjdhc081SjU1VVJTdUw2dGpGRFAxSDBLZ3ZN?=
 =?utf-8?B?RGw3OWh2djlMQVpXeXdweUxFZTdIMitQeGVBTk81NTdDSFBYSjg0U3JLQW5j?=
 =?utf-8?B?VVJDSkhIMzlNRVR3bE1SZWNpSUtEVTFmY09sRXdtMkNsaHkxYjlqc3p1QWJ5?=
 =?utf-8?B?NFRDVVpjUlVWZXc1cFFoMlVpQkg2VWpYQUdtTWJIUEVjbUFmK1h3SFN0cEVj?=
 =?utf-8?B?ZWxHQUd6T3N3dmNwM2k5d00vMnNXTHVDdFVjaG1BT25yL0RTbTF0MGtyZ0xz?=
 =?utf-8?B?OXZnU2JReVhoZkV2NmJUQURBMWRJOEplSzNWem5TbmQwZDgybzlYNzlqN0U4?=
 =?utf-8?B?YkxnendQR0VhT2lQV28vK0hTT2VBRWpCMUI3TGl5R241N2ZwTHRvd05Bck9r?=
 =?utf-8?B?MHBEckxnT0VjNkRIenovRzFFUXhWSG9qeVV6SnJ2QWFyR2g5RDQySUNqc0xo?=
 =?utf-8?B?a1dWYUNodWM3VjlmbndqMjBCWG5XZFhKNU1tZEF5dS9mUDdmaEY3eER0WmxU?=
 =?utf-8?B?NzZwSmNjNHJUU0RTOU0zL1JrTE54d3Myc1lYZDU4U2owVlRabHYrMnNSa0ln?=
 =?utf-8?B?UmdUTnNvTTJyUVVBZ2FOU2dLYlV5QjF5ekpLRnA0VXBETWxORVltZHVkejli?=
 =?utf-8?B?LzFkVDRmc2tmT3JQQ0JaUnB4T0ovZDVTZ1BBZTU4MmhiOVZ0eG9aSG02UlZH?=
 =?utf-8?B?cDdvZEg5dGdxYXRndkhndlF3RW80ajBUaXN4QmYzRTRzK2ZGQmFCRzIxeDV1?=
 =?utf-8?B?aWEyQTZ5ZHdYQjRmNHpRWWtIUUgxNUlMZ1o4SjRsVHJ6UkdxQURLdnlic2l4?=
 =?utf-8?B?dkpiNExHNHV6LzM0QS9CQlpkcVZseFpNTVFTSXF5eFdKNDRnL25MenRtaUUv?=
 =?utf-8?B?cGE3Q2d6emhZYkRMbHowNFYyUU5TUHhNT1cxUGZxMHlnaU1MQ2VheE5peGdP?=
 =?utf-8?B?cHhoMHV5Umkxcmhud3YzU0VhVWxwS1V4NEZwSXVybC9kR2ROWkJrSGVrZ1RD?=
 =?utf-8?B?clRaV3FkdmszS1U3NXZWTW1oT3VHSzBKdWN3TW5ZZXdiM1JYUWZ0bGNWS1Na?=
 =?utf-8?B?bCtMVkh6cDlHNDdZTGhLNlZsWVRSY0NqNjlwQUdndHIwR1J2eGVFY281NkQ5?=
 =?utf-8?B?eFY1S1grSU5YeW92bkQ4R2d2Umd5aEZSYkczTWh2M0xqRmZ1WFRLNmUrT1J1?=
 =?utf-8?B?QXo3VHk3cUdoRlhsMk4rcktZSnVZOFlKTmpYV1R6VFNWVjJaTStuNzUrNzFz?=
 =?utf-8?B?S0pwdGlhUmgzd2dKUTIxN1BmKzRvb0huL0IrQkhaazRBeGtLV3lCdEdXempJ?=
 =?utf-8?B?ckdpZTlvNEtJZUtSNGoxWWFublVwSldjNndMR1JBUFZuT2swZ1hCUlNmNlZV?=
 =?utf-8?B?S3pyUEQ3bWRBVTRLNmtJejR5QW51RkthdWpjV1VJa3k3MWNrbExoMlNUVzdB?=
 =?utf-8?B?a0lDaVpZcXlRNGRVOWhyNjZDWGRrZ2pJQ1NrK3AvU012UTg0NVZTK0FVd3Rm?=
 =?utf-8?B?aGpsTFpGWlNvMWY3NDR2a0c0a2p0bWdZY3FiSnQyNVhWOXBSSkJvdUVVODRE?=
 =?utf-8?Q?uaOxgrVKDYc+rnbezXlY?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(7416011)(1800799021)(366013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S08yWFBsNDJtYmFwdnZSbWs0WjNBOVFDYWFtK01BS2psWDVPWkVXNk5EMEZY?=
 =?utf-8?B?SkhQa20vU1ZJcVFXK1NaSFk1NCtGZmloRjY0cmNGcFY2cGQ5YTl4UFNZNjRV?=
 =?utf-8?B?T084MEpIS09lMnUwaG9zQTZWSDExakozNWhXakJNYkN1YkZDSE1IdG1qUlJM?=
 =?utf-8?B?NURtM2ptRzlkRXR0SkszVnVqQkpWbEU0OVpCVUplaXp2OTNzZE9MZ0JTTGZx?=
 =?utf-8?B?R2UxTUxsa0Nud1dONmZOaTVhb1dWVzJacWtTUlRDdWMzUVB2VWxZeDRGM3JX?=
 =?utf-8?B?d2hMQmx3YUFqa3Z3RlZ1VzhWbklPR2V6cldlMkNXOU1OWlZNaHJlQ2xqcXVN?=
 =?utf-8?B?Vk4xNk54MUtCQ3lrRE5LV0FPOTBFNWQrQUlUZkg3cVZLSFYrallNMy85V1Z6?=
 =?utf-8?B?RUlqbVhRejBMN3VwZER3VjJuTzJ4SkRZRzdYT2I2dXJhVXJ2Z3lQQ05hMTNY?=
 =?utf-8?B?TkVEdmFlTmpDd2xmT2JlaWc3K3BrWkZOVWJDTlRnQ2RESE9UQlp4c25BYWRY?=
 =?utf-8?B?Z0xNMFNQSU94emlRZ2JnZ0ptdlBPTXBZaG5hSGRTOXRoSHFRb2xqYXZZNkxn?=
 =?utf-8?B?RUFwSG9WOVVUMVkxV0g0Mzl4V3F6eGxSUC9vdlBPL0pxR1Q2VVhoK1RSWTNw?=
 =?utf-8?B?bG0zVDFTcXB3K0h1Sk1HRXZiNUczalZtQmRsVnB2eFZ0emxyYWwrV01IYWho?=
 =?utf-8?B?ejBrOHozM2p4aWpaQUxKWitKMEIwT0RQdFlNWnVqbllBSWhNMVh2bmNldTNL?=
 =?utf-8?B?WXNGbmZzWHoyZi85b2ppU0VwYStqQUplSTZ4MHl2T2YxMUR6OEFUekRwR01G?=
 =?utf-8?B?WDdyYWlQN2h1eDNrTFZSbWpBSWlpWHF5RzE3Mm0ySmlVME1VM0p4bUpBL2Iy?=
 =?utf-8?B?ZEVFYWJhV0IyY0FhVGtjUWpBelVEVjdHVDVnOHFxcXhDQmhJaWl3TkMrdzRI?=
 =?utf-8?B?N2NHTUFManlBdDNEUStnemhySnRSRmxGNU44Uk5YTHduQy81cklxWTdTQ1pp?=
 =?utf-8?B?dVY1T1QwM25vbFRQOGhXR0pJVFNiMC8rVWo0YnVyV3lYK3ZJckVBL3QvME41?=
 =?utf-8?B?ZTBncDZjalRhc2k4bUE1Y3IzMHFGZ1E4anRzWitnWVY4TmRFNGpOclM2c3p5?=
 =?utf-8?B?aEtZZDdQSnR1Tnk0VDhwUGswY1JjN0ZibWh4THQ2bGFQSzVZYm8xbXZNeXhI?=
 =?utf-8?B?elptRDJrZVJ3dzhLeGFPUWsyRzQrV1JvTzJYS2VFUG42cGN3cWR3TSsvTXov?=
 =?utf-8?B?dy92MDB3UmZvNW9xdEl4ZWFHYllnZTZmU0lrTmp4ZFVzT2ZldWp0TG9RUmNK?=
 =?utf-8?B?YW1FZ2NwMmN6bmdyWjhRdFFGc0JrUlZoWHFFbGVnM00rcmZnYVptTVFjdWRK?=
 =?utf-8?B?bVFCMWNLR0h0dG1xaTdUeE5YWmc5NGcwZmhFZ2ZPZVdacjEvZjVscmVyMUtv?=
 =?utf-8?B?dzJKVWpOUldPUlFOUTRyZnB1V0UxMi9wMnZ2NmpsQTRNZGNPVEYraExkQlRa?=
 =?utf-8?B?VTZid2FSMkswNlYyV01oRzB1ZkhpRkhQRjRPcHpXZ1NmRWFILzN3QzhOajFy?=
 =?utf-8?B?KzFmYmJ5NS92KzdZdVhkQ091Nk5xQ0sxejhrNnNkZi9TNTc3VmZhTytjOGdh?=
 =?utf-8?B?djZxYzFJQmhYRzk0QzkrV28xY0ZsODVJY1JtSWhiVnZ0MUMwZEtjOWgxTzJM?=
 =?utf-8?B?Qld2R2lOOXIycXNpYytlN2RRS1Z0cGQ3Z0czRU1OeXdabXRXdlFBWEl4WWhZ?=
 =?utf-8?B?L0pHTVFWU1R1eXFJakJlbG5INGJsUWdzT2tDVllqUGN3QWI4S2lyRVAxeW5T?=
 =?utf-8?B?OW1WSEx6dlpiRVRuOXNaTXBYbmUrS0tNWTlJamhnb0k2a0h0Mmh1SEozVHd6?=
 =?utf-8?B?cWFUcHRxNWYzZHBLYmw0Q3owSHVXL1NhOU9OVW15MHJCaWd5cVJxMFYxYW8y?=
 =?utf-8?B?RTVwZCtCNGZWYmhXQm9YN1c0VjB0dlRwL1hSelhBMjZubmtKV0JhbnlhLzNC?=
 =?utf-8?B?OVF5aTVWcDlYVjliZ3dwb3Y3NGhUZDRucEhldFdZRTFYWHdLSHVPM0xuSVpN?=
 =?utf-8?B?blJRaEFUQUQ4UU95cGozVStKRVAwUkY5ZVYwSm5Od1NRSGZJZ0t3dStFSDZp?=
 =?utf-8?Q?TyQMIjF5ajewGEDGbQtuUr3Rm?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cdb57fb-80a7-426a-07df-08dc950d4b9a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2024 11:52:31.7097
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vEAQrui35ROl8PkgvO2y8I5sXbZY9PkMLiglAqbaxdBikjcvkKSkzcmMHsEU4aDh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR12MB9155
X-Rspamd-Queue-Id: C50DF40F0B
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.49 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	XM_UA_NO_VERSION(0.01)[];
	URIBL_BLOCKED(0.00)[mail-mw2nam10on2050.outbound.protection.outlook.com:rdns,amd.com:dkim,NAM10-MW2-obe.outbound.protection.outlook.com:helo];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,kernel.org,gmail.com,linux-foundation.org,linaro.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,mediatek.com,infradead.org,quicinc.com,ucw.cz,arm.com,emersion.fr,deltatee.com,ffwll.ch,kernel.org,collabora.com,linaro.org,lists.freedesktop.org,gmail.com];
	DKIM_TRACE(0.00)[amd.com:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.50:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: XGPKFBO3LI3I35BZ5BB4M3OIGHTC3LWQ
X-Message-ID-Hash: XGPKFBO3LI3I35BZ5BB4M3OIGHTC3LWQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "willy@infradead.org" <willy@infradead.org>, =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "pavel@ucw.cz" <pavel@ucw.cz>, "robin.murphy@arm.com" <robin.murphy@arm.com>, "contact@emersion.fr" <contact@emersion.fr>, "logang@deltatee.com" <logang@deltatee.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, "jkardatzke@google.com" <jkardatzke@google.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabor
 a.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "ppaalanen@gmail.com" <ppaalanen@gmail.com>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>, =?UTF-8?B?WW91bGluIFBlaSAo6KO05Y+L5p6XKQ==?= <youlin.pei@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/9] scatterlist: Add a flag for the restricted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGPKFBO3LI3I35BZ5BB4M3OIGHTC3LWQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6081340882739734983=="

--===============6081340882739734983==
Content-Type: multipart/alternative;
 boundary="------------29cA2Y5usDSckaVmqnPIXvJK"
Content-Language: en-US

--------------29cA2Y5usDSckaVmqnPIXvJK
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjUuMDYuMjQgdW0gMTM6MDIgc2NocmllYiBKYXNvbi1KSCBMaW4gKOael+edv+elpSk6DQo+
DQo+IEhpIENocmlzdGlhbiwNCj4NCj4gT24gVHVlLCAyMDI0LTA1LTIxIGF0IDIwOjM2ICswMjAw
LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiA+IEFtIDIwLjA1LjI0IHVtIDA5OjU4IHNjaHJp
ZWIgWW9uZyBXdSAo5ZC05YuHKToNCj4gPiA+IE9uIFRodSwgMjAyNC0wNS0xNiBhdCAxMDoxNyAr
MDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gPiA+ID4gICANCj4gPiA+ID4gRXh0ZXJu
YWwgZW1haWwgOiBQbGVhc2UgZG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMN
Cj4gPiA+ID4gdW50aWwNCj4gPiA+ID4geW91IGhhdmUgdmVyaWZpZWQgdGhlIHNlbmRlciBvciB0
aGUgY29udGVudC4NCj4gPiA+ID4gICBBbSAxNS4wNS4yNCB1bSAxMzoyMyBzY2hyaWViIFlvbmcg
V3U6DQo+ID4gPiA+ID4gSW50cm9kdWNlIGEgRkxBRyBmb3IgdGhlIHJlc3RyaWN0ZWQgbWVtb3J5
IHdoaWNoIG1lYW5zIHRoZQ0KPiA+ID4gPiA+IG1lbW9yeQ0KPiA+ID4gPiANCj4gPiA+ID4gaXMN
Cj4gPiA+ID4gPiBwcm90ZWN0ZWQgYnkgVEVFIG9yIGh5cGVydmlzb3IsIHRoZW4gaXQncyBpbmFj
Y2Vzc2lhYmxlIGZvcg0KPiA+ID4gPiA+IGtlcm5lbC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBD
dXJyZW50bHkgd2UgZG9uJ3QgdXNlIHNnX2RtYV91bm1hcmtfcmVzdHJpY3RlZCwgdGh1cyB0aGlz
DQo+ID4gPiA+IA0KPiA+ID4gPiBpbnRlcmZhY2UNCj4gPiA+ID4gPiBoYXMgbm90IGJlZW4gYWRk
ZWQuDQo+ID4gPiA+IA0KPiA+ID4gPiBXaHkgc2hvdWxkIHRoYXQgYmUgcGFydCBvZiB0aGUgc2Nh
dHRlcmxpc3Q/IEl0IGRvZXNuJ3Qgc2VlbSB0bw0KPiA+ID4gPiBhZmZlY3QNCj4gPiA+ID4gYW55
IG9mIGl0J3MgZnVuY3Rpb25hbGl0eS4NCj4gPiA+ID4gDQo+ID4gPiA+IEFzIGZhciBhcyBJIGNh
biBzZWUgdGhlIHNjYXR0ZXJsaXN0IHNob3VsZG4ndCBiZSB0aGUgdHJhbnNwb3J0IG9mDQo+ID4g
PiA+IHRoaXMNCj4gPiA+ID4ga2luZCBvZiBpbmZvcm1hdGlvbi4NCj4gPiA+IA0KPiA+ID4gVGhh
bmtzIGZvciB0aGUgcmV2aWV3LiBJIHdpbGwgcmVtb3ZlIHRoaXMuDQo+ID4gPiANCj4gPiA+IElu
IG91ciB1c2VyIHNjZW5hcmlvLCBEUk0gd2lsbCBpbXBvcnQgdGhlc2UgYnVmZmVycyBhbmQgY2hl
Y2sgaWYNCj4gPiA+IHRoaXMNCj4gPiA+IGlzIGEgcmVzdHJpY3RlZCBidWZmZXIuIElmIHllcywg
aXQgd2lsbCB1c2Ugc2VjdXJlIEdDRSB0YWtlcyBvdmVyLg0KPiA+ID4gDQo+ID4gPiBJZiB0aGlz
IGp1ZGdtZW50IGlzIG5vdCBzdWl0YWJsZSB0byBiZSBwbGFjZWQgaW4gc2NhdHRlcmxpc3QuIEkN
Cj4gPiA+IGRvbid0DQo+ID4gPiBrbm93IGlmIGl0IGlzIG9rIHRvIGxpbWl0IHRoaXMgaW5zaWRl
IGRtYS1idWYuIEFkZGluZyBzdWNoIGFuDQo+ID4gPiBpbnRlcmZhY2U6DQo+ID4gPiANCj4gPiA+
IHN0YXRpYyBib29sIGRtYV9idWZfaXNfcmVzdHJpY3RlZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
KQ0KPiA+ID4gew0KPiA+ID4gcmV0dXJuICFzdHJuY21wKGRtYWJ1Zi0+ZXhwX25hbWUsICJyZXN0
cmljdGVkIiwgMTApOw0KPiA+ID4gfQ0KPiA+IA0KPiA+IE5vLCB1c3VhbGx5IHN0dWZmIGxpa2Ug
dGhhdCBkb2Vzbid0IGJlbG9uZyBpbnRvIERNQSBidWYgZWl0aGVyLg0KPiA+IA0KPiA+IFF1ZXN0
aW9uIGhlcmUgcmVhbGx5IGlzIHdobyBjb250cm9scyB0aGUgc2VjdXJpdHkgc3RhdHVzIG9mIHRo
ZQ0KPiA+IG1lbW9yeSANCj4gPiBiYWNraW5nIHRoZSBidWZmZXI/DQo+ID4gDQo+ID4gSW4gb3Ro
ZXIgd29yZHMgd2hvIHRlbGxzIHRoZSBleHBvcnRlciB0aGF0IGl0IHNob3VsZCBhbGxvY2F0ZSBh
bmQNCj4gPiBmaWxsIGEgDQo+ID4gYnVmZmVyIHdpdGggZW5jcnlwdGVkIGRhdGE/DQo+ID4gDQo+
ID4gSWYgdGhhdCBpcyB1c2Vyc3BhY2UgdGhlbiB0aGF0IGlzIHBhcnQgb2YgdGhlIGZvcm1hdCBp
bmZvcm1hdGlvbiBhbmQNCj4gPiBpdCANCj4gPiBpcyBhbHNvIHVzZXJzcGFjZSB3aG8gc2hvdWxk
IHRlbGwgdGhlIGltcG9ydGVyIHRoYXQgaXQgbmVlZHMgdG8gd29yayANCj4gPiB3aXRoIGVuY3J5
cHRlZCBkYXRhLg0KPiA+IA0KPiA+IFRoZSBrZXJuZWwgaXMgaW50ZW50aW9uYWxseSBub3QgaW52
b2x2ZWQgaW4gc3R1ZmYgbGlrZSB0aGF0Lg0KPiA+IA0KPg0KPiBIZXJlIGlzIHRoZSBleHBlY3Rl
ZCBwcm90ZWN0ZWQgY29udGVudCBidWZmZXIgZmxvdyBpbiBEUk06DQo+IDEpIHVzZXJzcGFjZSBh
bGxvY2F0ZXMgYSBkbWEtYnVmIEZEIGZyb20gdGhlICJyZXN0cmljdGVkX210a19jbWEiIGJ5DQo+
IERNQV9IRUFQX0lPQ1RMX0FMTE9DLg0KPiAyKSB1c2Vyc3BhY2UgaW1wb3J0cyB0aGF0IGRtYS1i
dWYgaW50byB0aGUgZGV2aWNlIHVzaW5nIHByaW1lIGZvciB0aGUNCj4gZHJtX2ZpbGUuDQo+IDMp
IHVzZXJzcGFjZSB1c2VzIHRoZSBhbHJlYWR5IGltcGxlbWVudGVkIGRyaXZlciBpbXBvcnQgY29k
ZSBmb3IgdGhlDQo+IHNwZWNpYWwgY2FzZXMgb2YgcHJvdGVjdGVkIGNvbnRlbnQgYnVmZmVyLg0K
DQpXaGF0IGlzIHNvIHNwZWNpYWwgb24gdGhhdCBjYXNlPw0KDQo+DQo+IEluIHRoZSBzdGVwIDMp
LCB3ZSBuZWVkIHRvIHZlcmlmeSB0aGUgZG1hLWJ1ZiBpcyBhbGxvY2F0ZWQgZnJvbQ0KPiAicmVz
dHJpY3RlZF9tdGtfY21hIiwgYnV0IHRoZXJlIGlzIG5vIHdheSB0byBwYXNzIHRoZSBzZWN1cmUg
ZmxhZyBvcg0KPiBwcml2YXRlIGRhdGEgZnJvbSB1c2Vyc3BhY2UgdG8gdGhlIGltcG9ydCBpbnRl
cmZhY2UgaW4gRFJNIGRyaXZlci4NCg0KV2h5IGRvIHlvdSBuZWVkIHRvIHZlcmlmeSB0aGF0Pw0K
DQo+DQo+IFNvIEkgY2FuIG9ubHkgdmVyaWZ5IGl0IGxpa2UgdGhpcyBub3c6DQo+IHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqbXRrX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9k
ZXZpY2UNCj4gKmRldiwgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLCBzdHJ1Y3Qg
c2dfdGFibGUgKnNnKQ0KPiB7DQo+ICAgICAgc3RydWN0IG10a19nZW1fb2JqICptdGtfZ2VtOw0K
Pg0KPiAgICAgIC8qIGNoZWNrIGlmIHRoZSBlbnRyaWVzIGluIHRoZSBzZ190YWJsZSBhcmUgY29u
dGlndW91cyAqLw0KPiAgICAgIGlmIChkcm1fcHJpbWVfZ2V0X2NvbnRpZ3VvdXNfc2l6ZShzZykg
PCBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZSkgew0KPiAgICAgICAgICBEUk1fRVJST1IoInNnX3RhYmxl
IGlzIG5vdCBjb250aWd1b3VzIik7DQo+ICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwp
Ow0KPiAgICAgIH0NCj4gICAgICBtdGtfZ2VtID0gbXRrX2dlbV9pbml0KGRldiwgYXR0YWNoLT5k
bWFidWYtPnNpemUpOw0KPiAgICAgIGlmIChJU19FUlIobXRrX2dlbSkpDQo+ICAgICAgICAgIHJl
dHVybiBFUlJfQ0FTVChtdGtfZ2VtKTsNCj4NCj4gKyAgIG10a19nZW0tPnNlY3VyZSA9ICghc3Ry
bmNtcChhdHRhY2gtPmRtYWJ1Zi0+ZXhwX25hbWUsICJyZXN0cmljdGVkIiwNCj4gMTApKTsNCj4g
ICAgICBtdGtfZ2VtLT5kbWFfYWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnLT5zZ2wpOw0KPiAgICAg
IG10a19nZW0tPnNpemUgPSBhdHRhY2gtPmRtYWJ1Zi0+c2l6ZTsNCj4gICAgICBtdGtfZ2VtLT5z
ZyA9IHNnOw0KPg0KPiAgICAgIHJldHVybiAmbXRrX2dlbS0+YmFzZTsNCj4gfQ0KDQpDb21wbGV0
ZSBOQUsgZnJvbSBteSBzaWRlIHRvIHRoYXQgYXBwcm9hY2guIEltcG9ydGluZyBvZiBhIERNQS1i
dWYgDQpzaG91bGQgYmUgaW5kZXBlbmRlbnQgb2YgdGhlIGV4cG9ydGVyLg0KDQpXaGF0IHlvdSBj
b3VsZCBkbyBpcyB0byBwcm92aWRlIHRoZSBzZWN1cmUgYnVmZmVyIGZyb20gYSBkZXZpY2UgYW5k
IG5vdCANCmEgZGV2aWNlIGhlYXAuDQoNCj4gSSB0aGluayBJIGhhdmUgdGhlIHNhbWUgcHJvYmxl
bSBhcyB0aGUgRUNDX0ZMQUcgbWVudGlvbiBpbjoNCj4NCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtbWVkaWEvMjAyNDA1MTUtZG1hLWJ1Zi1lY2MtaGVhcC12MS0wLTU0Y2JiZDA0OTUx
MUBrZXJuZWwub3JnLw0KPg0KPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBoYXZlIHRo
ZSB1c2VyIGNvbmZpZ3VyYWJsZSBwcml2YXRlDQo+IGluZm9ybWF0aW9uIGluIGRtYS1idWYsIHNv
IGFsbCB0aGUgZHJpdmVycyB3aG8gaGF2ZSB0aGUgc2FtZQ0KPiByZXF1aXJlbWVudCBjYW4gZ2V0
IHRoZWlyIHByaXZhdGUgaW5mb3JtYXRpb24gZnJvbSBkbWEtYnVmIGRpcmVjdGx5IGFuZA0KPiBu
byBuZWVkIHRvIGNoYW5nZSBvciBhZGQgdGhlIGludGVyZmFjZS4NCj4NCj4gV2hhdCdzIHlvdXIg
b3BpbmlvbiBpbiB0aGlzIHBvaW50Pw0KDQpXZWxsIG9mIGhhbmQgSSBkb24ndCBzZWUgdGhlIG5l
ZWQgZm9yIHRoYXQuDQoNCldoYXQgaGFwcGVucyBpZiB5b3UgZ2V0IGEgbm9uLXNlY3VyZSBidWZm
ZXIgaW1wb3J0ZWQgaW4geW91ciBzZWN1cmUgZGV2aWNlPw0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFu
Lg0KDQo+DQo+IFJlZ2FyZHMsDQo+IEphc29uLUpILkxpbg0KPg0KPiA+IFJlZ2FyZHMsDQo+ID4g
Q2hyaXN0aWFuLg0KPg0KPiAqKioqKioqKioqKioqIE1FRElBVEVLIENvbmZpZGVudGlhbGl0eSBO
b3RpY2UNCj4gICAqKioqKioqKioqKioqKioqKioqKg0KPiBUaGUgaW5mb3JtYXRpb24gY29udGFp
bmVkIGluIHRoaXMgZS1tYWlsIG1lc3NhZ2UgKGluY2x1ZGluZyBhbnkNCj4gYXR0YWNobWVudHMp
IG1heSBiZSBjb25maWRlbnRpYWwsIHByb3ByaWV0YXJ5LCBwcml2aWxlZ2VkLCBvciBvdGhlcndp
c2UNCj4gZXhlbXB0IGZyb20gZGlzY2xvc3VyZSB1bmRlciBhcHBsaWNhYmxlIGxhd3MuIEl0IGlz
IGludGVuZGVkIHRvIGJlDQo+IGNvbnZleWVkIG9ubHkgdG8gdGhlIGRlc2lnbmF0ZWQgcmVjaXBp
ZW50KHMpLiBBbnkgdXNlLCBkaXNzZW1pbmF0aW9uLA0KPiBkaXN0cmlidXRpb24sIHByaW50aW5n
LCByZXRhaW5pbmcgb3IgY29weWluZyBvZiB0aGlzIGUtbWFpbCAoaW5jbHVkaW5nIGl0cw0KPiBh
dHRhY2htZW50cykgYnkgdW5pbnRlbmRlZCByZWNpcGllbnQocykgaXMgc3RyaWN0bHkgcHJvaGli
aXRlZCBhbmQgbWF5DQo+IGJlIHVubGF3ZnVsLiBJZiB5b3UgYXJlIG5vdCBhbiBpbnRlbmRlZCBy
ZWNpcGllbnQgb2YgdGhpcyBlLW1haWwsIG9yIGJlbGlldmUNCj4gICANCj4gdGhhdCB5b3UgaGF2
ZSByZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVy
DQo+IGltbWVkaWF0ZWx5IChieSByZXBseWluZyB0byB0aGlzIGUtbWFpbCksIGRlbGV0ZSBhbnkg
YW5kIGFsbCBjb3BpZXMgb2YNCj4gdGhpcyBlLW1haWwgKGluY2x1ZGluZyBhbnkgYXR0YWNobWVu
dHMpIGZyb20geW91ciBzeXN0ZW0sIGFuZCBkbyBub3QNCj4gZGlzY2xvc2UgdGhlIGNvbnRlbnQg
b2YgdGhpcyBlLW1haWwgdG8gYW55IG90aGVyIHBlcnNvbi4gVGhhbmsgeW91IQ0K

--------------29cA2Y5usDSckaVmqnPIXvJK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5
cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQogIDwvaGVhZD4NCiAgPGJv
ZHk+DQogICAgQW0gMjUuMDYuMjQgdW0gMTM6MDIgc2NocmllYiBKYXNvbi1KSCBMaW4gKOael+ed
v+elpSk6PGJyPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoxMDUwYzQ0
NTEyMzc0MDMxZDEzNDliNWRjZWQyMjhkMGVmYzNmYmRlLmNhbWVsQG1lZGlhdGVrLmNvbSI+DQog
ICAgICANCiAgICAgIDxwPg0KICAgICAgPC9wPg0KICAgICAgPHByZT5IaSBDaHJpc3RpYW4sDQoN
Ck9uIFR1ZSwgMjAyNC0wNS0yMSBhdCAyMDozNiArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90
ZToNCiZndDsgQW0gMjAuMDUuMjQgdW0gMDk6NTggc2NocmllYiBZb25nIFd1ICjlkLTli4cpOg0K
Jmd0OyAmZ3Q7IE9uIFRodSwgMjAyNC0wNS0xNiBhdCAxMDoxNyArMDIwMCwgQ2hyaXN0aWFuIEvD
tm5pZyB3cm90ZToNCiZndDsgJmd0OyAmZ3Q7ICAgDQomZ3Q7ICZndDsgJmd0OyBFeHRlcm5hbCBl
bWFpbCA6IFBsZWFzZSBkbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cw0KJmd0
OyAmZ3Q7ICZndDsgdW50aWwNCiZndDsgJmd0OyAmZ3Q7IHlvdSBoYXZlIHZlcmlmaWVkIHRoZSBz
ZW5kZXIgb3IgdGhlIGNvbnRlbnQuDQomZ3Q7ICZndDsgJmd0OyAgIEFtIDE1LjA1LjI0IHVtIDEz
OjIzIHNjaHJpZWIgWW9uZyBXdToNCiZndDsgJmd0OyAmZ3Q7ICZndDsgSW50cm9kdWNlIGEgRkxB
RyBmb3IgdGhlIHJlc3RyaWN0ZWQgbWVtb3J5IHdoaWNoIG1lYW5zIHRoZQ0KJmd0OyAmZ3Q7ICZn
dDsgJmd0OyBtZW1vcnkNCiZndDsgJmd0OyAmZ3Q7IA0KJmd0OyAmZ3Q7ICZndDsgaXMNCiZndDsg
Jmd0OyAmZ3Q7ICZndDsgcHJvdGVjdGVkIGJ5IFRFRSBvciBoeXBlcnZpc29yLCB0aGVuIGl0J3Mg
aW5hY2Nlc3NpYWJsZSBmb3INCiZndDsgJmd0OyAmZ3Q7ICZndDsga2VybmVsLg0KJmd0OyAmZ3Q7
ICZndDsgJmd0OyANCiZndDsgJmd0OyAmZ3Q7ICZndDsgQ3VycmVudGx5IHdlIGRvbid0IHVzZSBz
Z19kbWFfdW5tYXJrX3Jlc3RyaWN0ZWQsIHRodXMgdGhpcw0KJmd0OyAmZ3Q7ICZndDsgDQomZ3Q7
ICZndDsgJmd0OyBpbnRlcmZhY2UNCiZndDsgJmd0OyAmZ3Q7ICZndDsgaGFzIG5vdCBiZWVuIGFk
ZGVkLg0KJmd0OyAmZ3Q7ICZndDsgDQomZ3Q7ICZndDsgJmd0OyBXaHkgc2hvdWxkIHRoYXQgYmUg
cGFydCBvZiB0aGUgc2NhdHRlcmxpc3Q/IEl0IGRvZXNuJ3Qgc2VlbSB0bw0KJmd0OyAmZ3Q7ICZn
dDsgYWZmZWN0DQomZ3Q7ICZndDsgJmd0OyBhbnkgb2YgaXQncyBmdW5jdGlvbmFsaXR5Lg0KJmd0
OyAmZ3Q7ICZndDsgDQomZ3Q7ICZndDsgJmd0OyBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoZSBzY2F0
dGVybGlzdCBzaG91bGRuJ3QgYmUgdGhlIHRyYW5zcG9ydCBvZg0KJmd0OyAmZ3Q7ICZndDsgdGhp
cw0KJmd0OyAmZ3Q7ICZndDsga2luZCBvZiBpbmZvcm1hdGlvbi4NCiZndDsgJmd0OyANCiZndDsg
Jmd0OyBUaGFua3MgZm9yIHRoZSByZXZpZXcuIEkgd2lsbCByZW1vdmUgdGhpcy4NCiZndDsgJmd0
OyANCiZndDsgJmd0OyBJbiBvdXIgdXNlciBzY2VuYXJpbywgRFJNIHdpbGwgaW1wb3J0IHRoZXNl
IGJ1ZmZlcnMgYW5kIGNoZWNrIGlmDQomZ3Q7ICZndDsgdGhpcw0KJmd0OyAmZ3Q7IGlzIGEgcmVz
dHJpY3RlZCBidWZmZXIuIElmIHllcywgaXQgd2lsbCB1c2Ugc2VjdXJlIEdDRSB0YWtlcyBvdmVy
Lg0KJmd0OyAmZ3Q7IA0KJmd0OyAmZ3Q7IElmIHRoaXMganVkZ21lbnQgaXMgbm90IHN1aXRhYmxl
IHRvIGJlIHBsYWNlZCBpbiBzY2F0dGVybGlzdC4gSQ0KJmd0OyAmZ3Q7IGRvbid0DQomZ3Q7ICZn
dDsga25vdyBpZiBpdCBpcyBvayB0byBsaW1pdCB0aGlzIGluc2lkZSBkbWEtYnVmLiBBZGRpbmcg
c3VjaCBhbg0KJmd0OyAmZ3Q7IGludGVyZmFjZToNCiZndDsgJmd0OyANCiZndDsgJmd0OyBzdGF0
aWMgYm9vbCBkbWFfYnVmX2lzX3Jlc3RyaWN0ZWQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCiZn
dDsgJmd0OyB7DQomZ3Q7ICZndDsgcmV0dXJuICFzdHJuY21wKGRtYWJ1Zi0mZ3Q7ZXhwX25hbWUs
ICZxdW90O3Jlc3RyaWN0ZWQmcXVvdDssIDEwKTsNCiZndDsgJmd0OyB9DQomZ3Q7IA0KJmd0OyBO
bywgdXN1YWxseSBzdHVmZiBsaWtlIHRoYXQgZG9lc24ndCBiZWxvbmcgaW50byBETUEgYnVmIGVp
dGhlci4NCiZndDsgDQomZ3Q7IFF1ZXN0aW9uIGhlcmUgcmVhbGx5IGlzIHdobyBjb250cm9scyB0
aGUgc2VjdXJpdHkgc3RhdHVzIG9mIHRoZQ0KJmd0OyBtZW1vcnkgDQomZ3Q7IGJhY2tpbmcgdGhl
IGJ1ZmZlcj8NCiZndDsgDQomZ3Q7IEluIG90aGVyIHdvcmRzIHdobyB0ZWxscyB0aGUgZXhwb3J0
ZXIgdGhhdCBpdCBzaG91bGQgYWxsb2NhdGUgYW5kDQomZ3Q7IGZpbGwgYSANCiZndDsgYnVmZmVy
IHdpdGggZW5jcnlwdGVkIGRhdGE/DQomZ3Q7IA0KJmd0OyBJZiB0aGF0IGlzIHVzZXJzcGFjZSB0
aGVuIHRoYXQgaXMgcGFydCBvZiB0aGUgZm9ybWF0IGluZm9ybWF0aW9uIGFuZA0KJmd0OyBpdCAN
CiZndDsgaXMgYWxzbyB1c2Vyc3BhY2Ugd2hvIHNob3VsZCB0ZWxsIHRoZSBpbXBvcnRlciB0aGF0
IGl0IG5lZWRzIHRvIHdvcmsgDQomZ3Q7IHdpdGggZW5jcnlwdGVkIGRhdGEuDQomZ3Q7IA0KJmd0
OyBUaGUga2VybmVsIGlzIGludGVudGlvbmFsbHkgbm90IGludm9sdmVkIGluIHN0dWZmIGxpa2Ug
dGhhdC4NCiZndDsgDQoNCkhlcmUgaXMgdGhlIGV4cGVjdGVkIHByb3RlY3RlZCBjb250ZW50IGJ1
ZmZlciBmbG93IGluIERSTToNCjEpIHVzZXJzcGFjZSBhbGxvY2F0ZXMgYSBkbWEtYnVmIEZEIGZy
b20gdGhlICZxdW90O3Jlc3RyaWN0ZWRfbXRrX2NtYSZxdW90OyBieQ0KRE1BX0hFQVBfSU9DVExf
QUxMT0MuDQoyKSB1c2Vyc3BhY2UgaW1wb3J0cyB0aGF0IGRtYS1idWYgaW50byB0aGUgZGV2aWNl
IHVzaW5nIHByaW1lIGZvciB0aGUNCmRybV9maWxlLg0KMykgdXNlcnNwYWNlIHVzZXMgdGhlIGFs
cmVhZHkgaW1wbGVtZW50ZWQgZHJpdmVyIGltcG9ydCBjb2RlIGZvciB0aGUNCnNwZWNpYWwgY2Fz
ZXMgb2YgcHJvdGVjdGVkIGNvbnRlbnQgYnVmZmVyLjwvcHJlPg0KICAgIDwvYmxvY2txdW90ZT4N
CiAgICA8YnI+DQogICAgV2hhdCBpcyBzbyBzcGVjaWFsIG9uIHRoYXQgY2FzZT88YnI+DQogICAg
PGJyPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoxMDUwYzQ0NTEyMzc0
MDMxZDEzNDliNWRjZWQyMjhkMGVmYzNmYmRlLmNhbWVsQG1lZGlhdGVrLmNvbSI+DQogICAgICA8
cHJlPg0KDQpJbiB0aGUgc3RlcCAzKSwgd2UgbmVlZCB0byB2ZXJpZnkgdGhlIGRtYS1idWYgaXMg
YWxsb2NhdGVkIGZyb20NCiZxdW90O3Jlc3RyaWN0ZWRfbXRrX2NtYSZxdW90OywgYnV0IHRoZXJl
IGlzIG5vIHdheSB0byBwYXNzIHRoZSBzZWN1cmUgZmxhZyBvcg0KcHJpdmF0ZSBkYXRhIGZyb20g
dXNlcnNwYWNlIHRvIHRoZSBpbXBvcnQgaW50ZXJmYWNlIGluIERSTSBkcml2ZXIuPC9wcmU+DQog
ICAgPC9ibG9ja3F1b3RlPg0KICAgIDxicj4NCiAgICBXaHkgZG8geW91IG5lZWQgdG8gdmVyaWZ5
IHRoYXQ/PGJyPg0KICAgIDxicj4NCiAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjaXRlPSJt
aWQ6MTA1MGM0NDUxMjM3NDAzMWQxMzQ5YjVkY2VkMjI4ZDBlZmMzZmJkZS5jYW1lbEBtZWRpYXRl
ay5jb20iPg0KICAgICAgPHByZT4NCg0KU28gSSBjYW4gb25seSB2ZXJpZnkgaXQgbGlrZSB0aGlz
IG5vdzoNCnN0cnVjdCBkcm1fZ2VtX29iamVjdCAqbXRrX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFi
bGUoc3RydWN0IGRybV9kZXZpY2UNCipkZXYsIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCwgc3RydWN0IHNnX3RhYmxlICpzZykNCnsNCiAgICBzdHJ1Y3QgbXRrX2dlbV9vYmogKm10
a19nZW07DQoNCiAgICAvKiBjaGVjayBpZiB0aGUgZW50cmllcyBpbiB0aGUgc2dfdGFibGUgYXJl
IGNvbnRpZ3VvdXMgKi8NCiAgICBpZiAoZHJtX3ByaW1lX2dldF9jb250aWd1b3VzX3NpemUoc2cp
ICZsdDsgYXR0YWNoLSZndDtkbWFidWYtJmd0O3NpemUpIHsNCiAgICAgICAgRFJNX0VSUk9SKCZx
dW90O3NnX3RhYmxlIGlzIG5vdCBjb250aWd1b3VzJnF1b3Q7KTsNCiAgICAgICAgcmV0dXJuIEVS
Ul9QVFIoLUVJTlZBTCk7DQogICAgfQ0KICAgIG10a19nZW0gPSBtdGtfZ2VtX2luaXQoZGV2LCBh
dHRhY2gtJmd0O2RtYWJ1Zi0mZ3Q7c2l6ZSk7DQogICAgaWYgKElTX0VSUihtdGtfZ2VtKSkNCiAg
ICAgICAgcmV0dXJuIEVSUl9DQVNUKG10a19nZW0pOw0KDQorICAgbXRrX2dlbS0mZ3Q7c2VjdXJl
ID0gKCFzdHJuY21wKGF0dGFjaC0mZ3Q7ZG1hYnVmLSZndDtleHBfbmFtZSwgJnF1b3Q7cmVzdHJp
Y3RlZCZxdW90OywNCjEwKSk7DQogICAgbXRrX2dlbS0mZ3Q7ZG1hX2FkZHIgPSBzZ19kbWFfYWRk
cmVzcyhzZy0mZ3Q7c2dsKTsNCiAgICBtdGtfZ2VtLSZndDtzaXplID0gYXR0YWNoLSZndDtkbWFi
dWYtJmd0O3NpemU7DQogICAgbXRrX2dlbS0mZ3Q7c2cgPSBzZzsNCg0KICAgIHJldHVybiAmYW1w
O210a19nZW0tJmd0O2Jhc2U7DQp9PC9wcmU+DQogICAgPC9ibG9ja3F1b3RlPg0KICAgIDxicj4N
CiAgICBDb21wbGV0ZSBOQUsgZnJvbSBteSBzaWRlIHRvIHRoYXQgYXBwcm9hY2guIEltcG9ydGlu
ZyBvZiBhIERNQS1idWYNCiAgICBzaG91bGQgYmUgaW5kZXBlbmRlbnQgb2YgdGhlIGV4cG9ydGVy
Ljxicj4NCiAgICA8YnI+DQogICAgV2hhdCB5b3UgY291bGQgZG8gaXMgdG8gcHJvdmlkZSB0aGUg
c2VjdXJlIGJ1ZmZlciBmcm9tIGEgZGV2aWNlIGFuZA0KICAgIG5vdCBhIGRldmljZSBoZWFwLjxi
cj4NCiAgICA8YnI+DQogICAgPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOjEwNTBj
NDQ1MTIzNzQwMzFkMTM0OWI1ZGNlZDIyOGQwZWZjM2ZiZGUuY2FtZWxAbWVkaWF0ZWsuY29tIj4N
CiAgICAgIDxwcmU+SSB0aGluayBJIGhhdmUgdGhlIHNhbWUgcHJvYmxlbSBhcyB0aGUgRUNDX0ZM
QUcgbWVudGlvbiBpbjoNCg0KPGEgY2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4dCIgaHJlZj0i
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjAyNDA1MTUtZG1hLWJ1Zi1lY2Mt
aGVhcC12MS0wLTU0Y2JiZDA0OTUxMUBrZXJuZWwub3JnLyI+aHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtbWVkaWEvMjAyNDA1MTUtZG1hLWJ1Zi1lY2MtaGVhcC12MS0wLTU0Y2JiZDA0OTUx
MUBrZXJuZWwub3JnLzwvYT4NCg0KSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gaGF2ZSB0
aGUgdXNlciBjb25maWd1cmFibGUgcHJpdmF0ZQ0KaW5mb3JtYXRpb24gaW4gZG1hLWJ1Ziwgc28g
YWxsIHRoZSBkcml2ZXJzIHdobyBoYXZlIHRoZSBzYW1lDQpyZXF1aXJlbWVudCBjYW4gZ2V0IHRo
ZWlyIHByaXZhdGUgaW5mb3JtYXRpb24gZnJvbSBkbWEtYnVmIGRpcmVjdGx5IGFuZA0Kbm8gbmVl
ZCB0byBjaGFuZ2Ugb3IgYWRkIHRoZSBpbnRlcmZhY2UuDQoNCldoYXQncyB5b3VyIG9waW5pb24g
aW4gdGhpcyBwb2ludD88L3ByZT4NCiAgICA8L2Jsb2NrcXVvdGU+DQogICAgPGJyPg0KICAgIFdl
bGwgb2YgaGFuZCBJIGRvbid0IHNlZSB0aGUgbmVlZCBmb3IgdGhhdC48YnI+DQogICAgPGJyPg0K
ICAgIFdoYXQgaGFwcGVucyBpZiB5b3UgZ2V0IGEgbm9uLXNlY3VyZSBidWZmZXIgaW1wb3J0ZWQg
aW4geW91ciBzZWN1cmUNCiAgICBkZXZpY2U/PGJyPg0KICAgIDxicj4NCiAgICBSZWdhcmRzLDxi
cj4NCiAgICBDaHJpc3RpYW4uPGJyPg0KICAgIDxicj4NCiAgICA8YmxvY2txdW90ZSB0eXBlPSJj
aXRlIiBjaXRlPSJtaWQ6MTA1MGM0NDUxMjM3NDAzMWQxMzQ5YjVkY2VkMjI4ZDBlZmMzZmJkZS5j
YW1lbEBtZWRpYXRlay5jb20iPg0KICAgICAgPHByZT4NCg0KUmVnYXJkcywNCkphc29uLUpILkxp
bg0KDQomZ3Q7IFJlZ2FyZHMsDQomZ3Q7IENocmlzdGlhbi4NCg0KPC9wcmU+DQogICAgICA8cHJl
PioqKioqKioqKioqKiogTUVESUFURUsgQ29uZmlkZW50aWFsaXR5IE5vdGljZQ0KICoqKioqKioq
KioqKioqKioqKioqDQpUaGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRoaXMgZS1tYWlsIG1l
c3NhZ2UgKGluY2x1ZGluZyBhbnkgDQphdHRhY2htZW50cykgbWF5IGJlIGNvbmZpZGVudGlhbCwg
cHJvcHJpZXRhcnksIHByaXZpbGVnZWQsIG9yIG90aGVyd2lzZQ0KZXhlbXB0IGZyb20gZGlzY2xv
c3VyZSB1bmRlciBhcHBsaWNhYmxlIGxhd3MuIEl0IGlzIGludGVuZGVkIHRvIGJlIA0KY29udmV5
ZWQgb25seSB0byB0aGUgZGVzaWduYXRlZCByZWNpcGllbnQocykuIEFueSB1c2UsIGRpc3NlbWlu
YXRpb24sIA0KZGlzdHJpYnV0aW9uLCBwcmludGluZywgcmV0YWluaW5nIG9yIGNvcHlpbmcgb2Yg
dGhpcyBlLW1haWwgKGluY2x1ZGluZyBpdHMgDQphdHRhY2htZW50cykgYnkgdW5pbnRlbmRlZCBy
ZWNpcGllbnQocykgaXMgc3RyaWN0bHkgcHJvaGliaXRlZCBhbmQgbWF5IA0KYmUgdW5sYXdmdWwu
IElmIHlvdSBhcmUgbm90IGFuIGludGVuZGVkIHJlY2lwaWVudCBvZiB0aGlzIGUtbWFpbCwgb3Ig
YmVsaWV2ZQ0KIA0KdGhhdCB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwg
cGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIA0KaW1tZWRpYXRlbHkgKGJ5IHJlcGx5aW5nIHRvIHRo
aXMgZS1tYWlsKSwgZGVsZXRlIGFueSBhbmQgYWxsIGNvcGllcyBvZiANCnRoaXMgZS1tYWlsIChp
bmNsdWRpbmcgYW55IGF0dGFjaG1lbnRzKSBmcm9tIHlvdXIgc3lzdGVtLCBhbmQgZG8gbm90DQpk
aXNjbG9zZSB0aGUgY29udGVudCBvZiB0aGlzIGUtbWFpbCB0byBhbnkgb3RoZXIgcGVyc29uLiBU
aGFuayB5b3UhDQo8L3ByZT4NCiAgICAgIDwhLS19LS0+DQogICAgICA8IS0tdHlwZTp0ZXh0LS0+
DQogICAgICA8IS0tey0tPjwvYmxvY2txdW90ZT4NCiAgICA8YnI+DQogIDwvYm9keT4NCjwvaHRt
bD4NCg==

--------------29cA2Y5usDSckaVmqnPIXvJK--

--===============6081340882739734983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6081340882739734983==--

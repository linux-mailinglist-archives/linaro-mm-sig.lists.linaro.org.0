Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C29BA4856
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 18:00:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A51345DAD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 16:00:46 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010059.outbound.protection.outlook.com [40.93.198.59])
	by lists.linaro.org (Postfix) with ESMTPS id 2BDCA3F729
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Sep 2025 16:00:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=J9lZOVe2;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.93.198.59 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uxD7NmnoLkbymLTwbfzXbHmbcNQGv+E2IDnJ3iIsppwhmSDPPhV5Sly63mexTIgquUpGla6mur6TAZT0+LebYP4GfKD/7tzwxd5sWP4SkUC+v4n1FWhh3xqgZkP1FV+s+vIQhb0Rcx1guPyr+e7EZRJYt55WkyGw2U9Nr8eBF7CDytXOw1lRtzb0yt6VQqIxmDZo09KrlnyfuSdvg7LNCiXC/0HQamt/ENOe690FUmIBmc8Z+rkoxCXIagJ1XVxNaqZB9kRqTp0HKPTSA2j4ApeJmx+Tk6FWoLHM9NIm2osyKcAkV9E7+qvL0+ZOScfo0Du8B5UT5huDdaUYtIkEaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEvD/49Fi1spAkobhbZvRdRebudtacZUGsaP7WwZMz4=;
 b=taVWuCs7TPQ6Pgzyy5RVZpf1mgwXZWldIrUwuw/P55TM2QTsnJppHT5UlNlWy2yplnVCudA92oEp6ki9y1DR8eEBpKIKoJcCEIQxeV7Zr1rmLcu1c78UwMKQY3vUqJezVyQNkqgthxnxCuwc4vzRDtsH41vBoxwJv0J/A8WXN+sTaDQ6lsKdQA0ozUKjVe4OE6s3UOcPQHNIS2plbocWfFeZQHDmvAlUUM1SnPzZ5nPEg5z+hY+v965rlMbqzjoAXRZ159P1SLHg3krMPmpkX6Ywr35GDXQAY1OyHOpYMS5Jpf+di5GQyAqCiwBkneAt+jaZBRxvd4jo21yzRkku8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEvD/49Fi1spAkobhbZvRdRebudtacZUGsaP7WwZMz4=;
 b=J9lZOVe2kuMvBw41SS3Wbt7Iv8AZRMX/SacTVwP1r3PXxqsGfudQlMnSDifuRVRCzlgnDiMKwzYcs+wFYqjCS0jNxrKWkex5tfuN2WnY3eIOp3Orm0zb16pzRgZpPmWgsgYq2YBKiormJCdgnYQnbwu4XcQJvYrheq+8ImiC0WkIkCt3WiLwwxBv8sPYJAr8HD4zKXwPqID0Mrp7n3JqZVsobVULFkecUNT/4K+l1NUzsgayIRZwtYjKDbSCX12Sq5Cp2XOl+pn+8QnYmVSgZqBTNyL+dmbkOYIaZzvt5MlVe3EDUSwC0QodpOnCY5soIUZNVVqyoVecXKo7/ceY1w==
Received: from PH7PR12MB5757.namprd12.prod.outlook.com (2603:10b6:510:1d0::13)
 by CH2PR12MB4248.namprd12.prod.outlook.com (2603:10b6:610:7a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.13; Fri, 26 Sep
 2025 16:00:38 +0000
Received: from PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632]) by PH7PR12MB5757.namprd12.prod.outlook.com
 ([fe80::f012:300c:6bf4:7632%2]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 16:00:38 +0000
Date: Fri, 26 Sep 2025 13:00:36 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250926160036.GE2617119@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
 <20250926144128.GD2617119@nvidia.com>
 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
Content-Disposition: inline
In-Reply-To: <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
X-ClientProxiedBy: YT3PR01CA0019.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:86::33) To PH7PR12MB5757.namprd12.prod.outlook.com
 (2603:10b6:510:1d0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5757:EE_|CH2PR12MB4248:EE_
X-MS-Office365-Filtering-Correlation-Id: 1928f32b-6457-4bba-32bb-08ddfd15d5d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UHZzTktVanRPeS92R1dxRTBjRWoraFBBYjIxUHBydXlFNnhpNitOS0pyU2xk?=
 =?utf-8?B?WVFhSkpGN1g0T3lSZ2ZwU2pTQkpSSGRObmMwOURKSENqaVJvdGR2RnJiUjdC?=
 =?utf-8?B?UnlXd0FKRFNwY1locGZzN0hiZVRPdU1BazFzbE1UeFowdVpXKzk5d3BFNWJS?=
 =?utf-8?B?YkpaN014c0F1MmlOWGZQeXB3MkNVVC9idUhBWXUxenh6MEhYVkhlR1VnQnB0?=
 =?utf-8?B?YXQvOU5rODNYdndrUGFmN3N4QnA0cm1ZMlNaZkdkZkVWVlRkbnc4bzd6bnhs?=
 =?utf-8?B?VUd0MVE5cXpHL1IrQWtiZ1E2Y0I1UmpBMUxackY5ODVxZ1VZKzQ2SGNCTmo4?=
 =?utf-8?B?bGJLRFg4Z2hZb29kTUZZWVNTSmxJV1lBWlJPYjZtSmtNSE9oMVo0empBM3NW?=
 =?utf-8?B?QVN1OXVWcVZiK1pGTlNmeEs4QS9BM1dZUnl0K2FYamt3K2gyeU04bzAyZG9B?=
 =?utf-8?B?VUUzOEFuTTZXUWhuT2twMjd3bkdTUjJMOGl5UkFpNVJwSjE1cWN2dFBZWDNl?=
 =?utf-8?B?NUVUTXZJUVBBMm1HcnYvUjhXNCtRWENVbzZQUWlQV3U3RDhNcFNUTS9ZbkdC?=
 =?utf-8?B?cHFGU0sxTjFjNU1vM2c0QXRxK0svc1FCMUwralpNTWtkZnVxL0hSNjlXc0xr?=
 =?utf-8?B?cUIrak1EVzNZNnFzS1phZDhOcFM1QUhib2drUmd0OGN6RFk0Qy82WnRxSjBm?=
 =?utf-8?B?eTFacVJtKzk1VTIwL05mcGd3K0VoTzJSYTgvQ0NPdWgyUXdCOXI0RktRMDR5?=
 =?utf-8?B?dEFsWk5hTUVaclMwQmc5RjNXaHJoR0FYa05iUER6b1NlbHJsTlZjWlFnNGMw?=
 =?utf-8?B?WDEvODVZTzhQbTlXNmJ1bG5GaWsxb1QvOUdieTIrTzh6dG5JZTdsdVFGd3dP?=
 =?utf-8?B?MkMwd3U0YVlHeXpMdHRObGJQQksxK1lzR2t4dTE0bHFSWC9Yc0laKzNkRy9C?=
 =?utf-8?B?cTBickNaMEhkUDFsSnRyVXprRzJvQVZhVnNwQ3VOSHpraG55U2RIOEdwalVp?=
 =?utf-8?B?Z3VGNXkyQUQrZTZ3Y21pakNRejY3UTVXVWVGYnZWNENIbE5iRlR5MFJuQkxu?=
 =?utf-8?B?YW82WFRZNThpVlVUTDdlTWdyeHd6YWRnUjhZb3J3SWNUNHluVnh2UFBtLzF0?=
 =?utf-8?B?TDQrckhjT1JqaCt2V0tidEpEdDJNNjJTRk9va1NOellnaWxRS29BOVVya1hn?=
 =?utf-8?B?dDN2bzNBSXFqbDdobE5XSU15Q2NPRXdudDNxUkUzT0VnRTc0WDNtVWFHbGRN?=
 =?utf-8?B?U21FQ0RxOVFvOXAwbTI5Ry9zeTVVeEllZWhaMnJvVzE1R0xlV25WR2ducU1t?=
 =?utf-8?B?MFNMVXlVVGxESUZiVElDVjVuRTFJbTl1TDM5bThpY1orNmtjdEFVaWRNc2Ra?=
 =?utf-8?B?Tk1uN09RaFhIZU96U1A4dC8rZXBZUE9SZ0wxYm94eWNtOFhEaXlrWXR6N0dm?=
 =?utf-8?B?QUNhb1NmUlZ3cXdJeUM0dVpUZ0JTaVhFSVYzL05DdGVwdWlXaDdVMlV5Si9J?=
 =?utf-8?B?Q1dGdmpwbmZqT3c4YmFxWFJsejdnWmQ2MHFBRmFEU0I0b281aHlqdWlrRDE1?=
 =?utf-8?B?ai9vc09JQnl2Z2pzaFRrckczM24zZVMwSEp4a2FXTVh5SWRxcW90MEJGZStq?=
 =?utf-8?B?RnQyYklmclZ1OWEyT2NHWVpIS1MxNjZxdXRoTmRFcTBEK0JFZFJJaVgxV1RR?=
 =?utf-8?B?TUJwd3F0RFVoODR5eFlVakI5ZGcvdlhwZEJjajB1YTlBT1lpRFN5eGovVkZx?=
 =?utf-8?B?ZzRGVGVOVGtXTm43aDJONmVhSnd0WU1FVEZGVklRRzkxWGVaaFdOdzhRbWxH?=
 =?utf-8?B?eW05OEtzemgyLzJXZU9hTHVnVXZlYU9pbTdOK2Y1SXM4TXFLY3doVjFpYUwz?=
 =?utf-8?B?N3BJNW1KVmNDQ2huMk9ZdXdiUVJuSlZmWnM2Rm1rZThwMnZQODF2cFloMThJ?=
 =?utf-8?Q?DGeXL0+fBik171RMcyGryP+RUBGs2YH0?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5757.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y25OcjFFZlk0L3hiUWZmcStPY0UrNDd3RytFdU9mdWNscjlUNCtsNDYwazhC?=
 =?utf-8?B?QjRhUWxPVHdwRCsyd09Uelk4YjBYSmhwbWo1MVZqS0ovVFk1ZWtid2Rsbmtw?=
 =?utf-8?B?aEZWZnlKTjg3MXUyUFRiQWQwYjlRK2tHUzRTNzY2Uk5FY3cvaHczT2RYWFFJ?=
 =?utf-8?B?VENpb3dwbDIvd05LTTZkZXlKRnQ0U05qMlVGNDlEekRWZWZXcFVUQmI0YkMw?=
 =?utf-8?B?dGIzNWxSeHJoeGc5VnBCVksxUnR4VjZXNmlSRzFpZXVJMnlSajNYNUdDdlJi?=
 =?utf-8?B?OHZ2VUxuY2k5ZDJBSWxCNDdHZnh1Qjl0Q0VmektnbWNFbXdlUEk2R1BSeHFQ?=
 =?utf-8?B?d2hDeFp0WHU1SEFtYlpuUlc1d3NZbnBPbHlCRXd5VDBIMVBUMWp0VlBKWWc5?=
 =?utf-8?B?dFkvbkVpU3gxVlNMMVNEeGJ3SitDZmpZMUVYTDRQc0pKQkxoVXpTeGtzNjZO?=
 =?utf-8?B?KzNDS2gyQUY3bTRZWUY4YVVOVUFpb3FxWU1kV21WcEJ4WGdMVnRaNGFhYy9j?=
 =?utf-8?B?USsrOWxGYXBZemVCb0p3SHpsZ0x0RHM0UEhDZ2IxRHBlQWtDU3lmdmVMRGNU?=
 =?utf-8?B?RW1wNDQ4S0diMHlpektMODYxeDFoVU0xakkwcXpwM0hjWm1lZzFPRGkyY3R4?=
 =?utf-8?B?TE1WVXFZWDJkbFRmaVE5bFNnS2p2c1Z6dXNNeW5Mb0hXb1drZDVkbHl0MGZ2?=
 =?utf-8?B?V1V2WTJMUXRjZ3R2Y3UxdjNLei9QWGlnc2p2T0J4a2hMbzZTdjMzaitTaTg4?=
 =?utf-8?B?NldCeDZEYzBLbGdpYVVrRE9KOUpPdFpJUmZremtGRzhQZEZFaXYxYVhRYTh1?=
 =?utf-8?B?K2dlRWZoallJWUVSdzFHRGl1eUtnWUh5TzBjRGhVRVFtUzZReWRveGQyTGpV?=
 =?utf-8?B?N0xZOXpGZUlrTW5RcEUwUXo2akYxUjJVNWQyMEhkMnl5d0swWUQyOFpOVUZI?=
 =?utf-8?B?SDRiejNzVHc1OGhUTmZmMmlzbmYvam5IaEpTQ0h1cU5oYllDUmNuZFd0aEZP?=
 =?utf-8?B?ZU15Nytkb1dPUzJCWURDRUVYNEhJY2NVSnUvcTVnZ3ZFdnZrODBpdDdQRzkx?=
 =?utf-8?B?T0hZNnJ1SUNUQThLQXdGL3lFWGdoNjg4Q0pQck1kUUJtTGU0Zm83N29jNUdB?=
 =?utf-8?B?dEFLVWVqaDNIZng4cXJVZ1M0N3dYR0p4b3BWUWNwdHFnZFZDcUlLdktGRDZX?=
 =?utf-8?B?eCtqemZ2ZnFML3Q3aGVmbnNsTkVWUEgrVklSRHRPTHpmWGxHUW4vRUZPY2JH?=
 =?utf-8?B?V3FobkVlbnlnd3JPNEVtSHZZT29WSnl5dGNqcjk4SVh5SjRnVHdFTkprY0dK?=
 =?utf-8?B?MGM3S2RSeUJJUmtlaGV0THNGTk9CWjhLdFlqbVRKbVRqemY5Um10ZDczWkFv?=
 =?utf-8?B?V1RCdTFJcmxrWlJGQ2o3K3VzSWpjVU9DNnRzSlJURUNHTEJLY2pvZG9EVWJE?=
 =?utf-8?B?Zy9FRlF2ckZlSDdYd0FGNUdBNVFaTlBhMU9ZMVJQWnZ6a3g3RENXaUdqMDA2?=
 =?utf-8?B?TnphVzhwck1ReldLdm1XeGNKWm1CWEtqUm5NQndKTWJCK3FnNWhJdVc0WFRr?=
 =?utf-8?B?M3BzNjFsZEIxQXJ6b2czVHhWRWtwbG1UU0dyczZrbTNqTGQrdkVyVVlMYisz?=
 =?utf-8?B?YjhhUDc2QkZ3VkM5QzU0R0h6eXMvTTVsdEtlSXU4NkFBZ2RjSkpsT0VHdkd6?=
 =?utf-8?B?Mk4wYTBhWXlaTDJZVkM1TlIzc2VZMmU3NFJmMloreFJHN0NOOEdNWTkwcWk1?=
 =?utf-8?B?Uld6TzBTa1JIRWp5bENpOXlrL2w4ZjljWkVMb0ZTbk1PV21LTk9TV0ljS1Zu?=
 =?utf-8?B?VTRVTDJzb1BNWEtKZGNRSVY0VVZkUEY1SXphK1FReGEyblBqTDVrZ0t6YUhS?=
 =?utf-8?B?UlhGYVZmN2xTMGlFVk5pN2IvVXFTUS8vZkJDbHFETEI5LzhTRUMxbGx1OVkr?=
 =?utf-8?B?RmN5aGlLZGxwZTVmekw5MGxod3Y2eTJMbGFtSlYzeGtTTlpvNUJqSFlvbzF0?=
 =?utf-8?B?a1kvYUZzUFVhaXVkS0hkSElsWEZuWGZWSGYvS05oSDAzbmFkdk9KMDV6bXdt?=
 =?utf-8?B?bUdCZW1OVmxBc09TSnV2eS9wcFpXeEcxNXc0WEJaYTA1SURDZ1d3ajVPT1dH?=
 =?utf-8?Q?d/Is=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1928f32b-6457-4bba-32bb-08ddfd15d5d3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5757.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 16:00:38.2809
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vL71b31vBVeUK3lx1OxtfFcezFWskCbQ48btzQMDVkObB0krjbUfivTQSN3ipeQI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4248
X-Rspamd-Queue-Id: 2BDCA3F729
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.198.59:from];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:1d0::13:received,40.93.198.59:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 4YXDMC7DER4QYGQN5VEKL7H6MMC2XDHW
X-Message-ID-Hash: 4YXDMC7DER4QYGQN5VEKL7H6MMC2XDHW
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4YXDMC7DER4QYGQN5VEKL7H6MMC2XDHW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgMDQ6NTE6MjlQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMjYuMDkuMjUgMTY6NDEsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4g
PiBPbiBGcmksIFNlcCAyNiwgMjAyNSBhdCAwMzo1MToyMVBNICswMjAwLCBUaG9tYXMgSGVsbHN0
csO2bSB3cm90ZToNCj4gPiANCj4gPj4gV2VsbCBib3RoIGV4cG9ydGVyIGFuZCBleHBvcnRlciBo
YXMgc3BlY2lmaWMgaW5mb3JtYXRpb24gV1JUIHRoaXMuIFRoZQ0KPiA+PiB1bHRpbWF0ZSBkZWNp
c2lvbiBpcyBkb25lIGluIHRoZSBleHBvcnRlciBhdHRhY2goKSBjYWxsYmFjaywganVzdCBsaWtl
DQo+ID4+IHBjaWVfcDJwLiBBbmQgdGhlIGV4cG9ydGVyIGFja25vd2xlZGdlcyB0aGF0IGJ5IHNl
dHRpbmcgdGhlDQo+ID4+IGRtYV9idWZfYXR0YWNobWVudDo6aW50ZXJjb25uZWN0X2F0dGFjaCBm
aWVsZC4gSW4gYW5hbG9neSB3aXRoIHRoZQ0KPiA+PiBkbWFfYnVmX2F0dGFjaG1lbnQ6OnBlZXIy
cGVlciBtZW1iZXIuDQo+ID4gDQo+ID4gSGF2aW5nIGEgc2luZ2xlIG9wdGlvbiBzZWVtcyB0b28g
bGltaXRlZCB0byBtZS4uDQo+IA0KPiBZZWFoLCBhZ3JlZS4NCj4gDQo+ID4gSSB0aGluayBpdCB3
b3VsZCBiZSBuaWNlIGlmIHRoZSBpbXBvcnRlciBjb3VsZCBzdXBwbHkgYSBsaXN0IG9mDQo+ID4g
J2ludGVyY29ubmVjdHMnIGl0IGNhbiBhY2NlcHQsIGVnOg0KPiA+IA0KPiA+ICAtIFZSQU0gb2Zm
c2V0IHdpdGhpbiB0aGlzIHNwZWNpZmljIFZSQU0gbWVtb3J5DQo+ID4gIC0gZG1hX2FkZHJfdCBm
b3IgdGhpcyBzdHJ1Y3QgZGV2aWNlDQo+ID4gIC0gIklPVkEiIGZvciB0aGlzIGluaXRpYXRvciBv
biBhIHByaXZhdGUgaW50ZXJjb25uZWN0DQo+ID4gIC0gUENJIGJhciBzbGljZQ0KPiA+ICAtIHBo
eXNfYWRkcl90ICh1c2VkIGJldHdlZW4gdmZpbywga3ZtLCBpb21tdWZkKQ0KPiANCj4gSSB3b3Vs
ZCByYXRoZXIgc2F5IHRoYXQgdGhlIGV4cG9ydGVyIHNob3VsZCBwcm92aWRlIHRoZSBsaXN0IG9m
IHdoYXQNCj4gaW50ZXJjb25uZWN0cyB0aGUgYnVmZmVyIG1pZ2h0IGJlIGFjY2Vzc2libGUgdGhy
b3VnaC4NCg0KRWl0aGVyIGRpcmVjdGlvbiB3b3JrcywgSSBza2V0Y2hlZCBpdCBsaWtlIHRoaXMg
YmVjYXVzZSBJIHRob3VnaHQNCnRoZXJlIHdlcmUgbW9yZSBpbXBvcnRlcnMgdGhhbiBleHBvcnRl
cnMsIGFuZCBpbiB0aGUgZmxvdyBpdCBpcyBlYXN5DQpmb3IgdGhlIGltcG9ydGVyIHRvIHByb3Zp
ZGUgYSBsaXN0IG9uIHRoZSBzdGFjaw0KDQpJIGRpZG4ndCBza2V0Y2ggZnVydGhlciwgYnV0IEkg
dGhpbmsgdGhlIGV4cG9ydGVyIGFuZCBpbXBvcnRlciBzaG91bGQNCmJvdGggYmUgcHJvdmlkaW5n
IGEgY29tcGF0aWJsZSBsaXN0IGFuZCB0aGVuIGluIGFsbW9zdCBhbGwgY2FzZXMgdGhlDQpjb3Jl
IGNvZGUgc2hvdWxkIGRvIHRoZSBtYXRjaGluZy4NCg0KSWYgdGhlIGltcG9ydGVyIHdvcmtzIGFz
IEkgc2hvd2VkLCB0aGVuIHRoZSBleHBvcnRlciB2ZXJzaW9uIHdvdWxkIGJlDQppbiBhbiBvcDoN
Cg0KaW50IGV4cG9ydGVyX25lZ290aWF0ZV9vcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KICAg
c3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0X25lZ290aWF0aW9uICppbXBvcnRlcl9zdXBwb3J0
LCBzaXplX3QgaW1wb3J0ZXJfbGVuKQ0Kew0KICAgICBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5l
Y3RfbmVnb3RpYXRpb24gZXhwb3J0ZXJfc3VwcG9ydFsyXSA9IHsNCiAgICAgICAgIFswXSA9IHsu
aW50ZXJjb25uZWN0ID0gbXlzZWxmLT54ZV92cmFtfSwNCiAgICAgICAgIFsxXSA9IHsuaW50ZXJj
b25uZWN0ID0gJmRtYWJ1Zl9nZW5lcmljX2RtYV9hZGRyX3QsIC5pbnRlcmNvbm5lY3RfYXJncyA9
IGV4cG9ydGVyX2Rldn0sDQogICAgIH07DQogICAgIHJldHVybiBkbWFfYnVmX2hlbHBlcl9uZWdv
dGlhdGUoZG1hYnVmLCBleHBvcnRlcl9zdXBwb3J0LA0KICAgICAgICAgICAgIEFSUkFZX1NJWkUo
ZXhwb3J0ZXJfc3VwcG9ydCksIGltcG9ydGVyX3N1cHBvcnQsIGltcG9ydGVyX2xlbik7DQp9DQoN
CldoaWNoIHRoZSBkbWFfYnVmX25lZ290aWF0ZSgpIGNhbGxzLg0KDQpUaGUgY29yZSBjb2RlIGRv
ZXMgdGhlIG1hdGNoaW5nIGdlbmVyaWNhbGx5LCBwcm9iYWJseSB0aGVyZSBpcyBhDQpzdHJ1Y3Qg
ZG1hX2J1Zl9pbnRlcmNvbm5lY3QgbWF0Y2goKSBvcCBpdCB1c2VzIHRvIGhlbHAgdGhpcyBwcm9j
ZXNzLg0KDQpJIGRvbid0IHRoaW5rIGltcG9ydGVyIG9yIGV4cG9ydGVyIHNob3VsZCBiZSBvcGVu
IGNvZGluZyBhbnkgbWF0Y2hpbmcuDQoNCkZvciBleGFtcGxlLCB3ZSBoYXZlIHNvbWUgc3lzdGVt
cyB3aXRoIG11bHRpcGF0aCBQQ0kuIFRoaXMgY291bGQNCmFjdHVhbGx5IHN1cHBvcnQgdGhvc2Ug
cHJvcGVybHkuIFRoZSBSRE1BIE5JQyBoYXMgdHdvIHN0cnVjdCBkZXZpY2VzDQppdCBvcGVyYXRl
cyB3aXRoIGRpZmZlcmVudCBwYXRocywgc28gaXQgd291bGQgd3JpdGUgb3V0IHR3bw0KJmRtYWJ1
Zl9nZW5lcmljX2RtYV9hZGRyX3QncyAtIG9uZSBmb3IgZWFjaC4NCg0KVGhlIEdQVSB3b3VsZCBk
byB0aGUgc2FtZS4gVGhlIGNvcmUgY29kZSBjYW4gaGF2ZSBnZW5lcmljIGNvZGUgdG8NCmV2YWx1
YXRlIGlmIFAyUCBpcyBwb3NzaWJsZSBhbmQgZXN0aW1hdGUgc29tZSBRT1IgYmV0d2VlbiB0aGUg
b3B0aW9ucy4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

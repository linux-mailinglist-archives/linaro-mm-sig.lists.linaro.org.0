Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC60FA17279
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 18:59:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 017DB44785
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Jan 2025 17:59:23 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2088.outbound.protection.outlook.com [40.107.236.88])
	by lists.linaro.org (Postfix) with ESMTPS id 97ADC3F602
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Jan 2025 17:59:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=lcw7CJKe;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.236.88 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RjQ6cAPj8WPvutAQ7Z5TX2tJOyl2stiRSKHtr5l45Nd6kRnJRaTm9fJAGLC+V2O6OCBbfvYxWGJIyHtg1PRcwwgGzdvZ6iW+9YeyUOW59TXtCJmRjTd8fk7cu7cD22DaWTEIY4Gvd1wqXc5v2cKyjC2VnvWtZcay+FvOdI8fHuXQfhqapJqRDsRcqFMCXRma24yKEPAblo8ws9nOG8hxfSXvp5KKigzC7V/38C7PqCXfXzqiWRajw/knDq2TQ/ESV7PnJAfULvzJ29ZiITA89Uz6LPmwd2O2vhBc3290p+9H+J9E6nVfd4ZWZNqbqrzqgSXVYJlxxi2V898arhlxaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/zWZwwJoXFpppVHURARR17tKAMyZmsvX4NnXTOiXUkk=;
 b=o7ETjSL3gsH9bHxlpUo87HqZNCiiJh39McPoeRAMfSL+2zpZzUDcYrgcSTvw9/er9tGuRFCnaiQMNNk+2hWrLrjJWKyQfV6ioWUeieFXETyzRO01gSgTElyevGItY7mQNA1X4YXFnrg98tS0VAvjWHSIQhYJgPFPLtRNX+iksfx727aWGiueSFZWZFw/o0t/B7OVsGHdRzNDslPGePO5KhB3fiCpEXEXgwvs58vyaThKNQwUHWP06X1gKMMgFNGu9TkHm3jP0y9MeS2ZeRko9a4D9214F7ohOB4DKLIbByCnRQ3zJMYgxuVzV1qBaa6wg+slBPO78zgMBJtnwVrPqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/zWZwwJoXFpppVHURARR17tKAMyZmsvX4NnXTOiXUkk=;
 b=lcw7CJKeegahYwl+QgbHZhg0oVPb+2sZofsS23lOSFHaiKnQ1n84M2KvAjtiCRz/2LEOS0SSIjbGTlxuz/8/JofF3vJzBI7Y0N//12crP7fXijUXd/5MH2MG9KRyUtyhL/lgkesEpfrAYLTJdjeTz29uvEKvgjWMFoX8ajRoDhu65PjBffD2pusCPLTcdKBkRxblslNK+UooPBFoQHB9rwwqOgFpbNEQDQMVQkugD2FT4uj2Lcu66SZ8c32nRGNonA+YnO/tdaOC5AD48u4V5gL4Zg0vzYG3g0xbpeH1+2dif6dAQGhK4SRG2127RpyJAMUx5Jz4mKTqpD97gsxxZQ==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by SJ1PR12MB6052.namprd12.prod.outlook.com (2603:10b6:a03:489::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.19; Mon, 20 Jan
 2025 17:59:03 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Mon, 20 Jan 2025
 17:59:03 +0000
Date: Mon, 20 Jan 2025 13:59:01 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Simona Vetter <simona.vetter@ffwll.ch>
Message-ID: <20250120175901.GP5556@nvidia.com>
References: <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <Z38FCOPE7WPprYhx@yilunxu-OptiPlex-7050>
 <Z4F2X7Fu-5lprLrk@phenom.ffwll.local>
 <20250110203838.GL5556@nvidia.com>
 <Z4Z4NKqVG2Vbv98Q@phenom.ffwll.local>
 <20250114173103.GE5556@nvidia.com>
 <Z4d4AaLGrhRa5KLJ@phenom.ffwll.local>
 <420bd2ea-d87c-4f01-883e-a7a5cf1635fe@amd.com>
 <Z4psR1qoNQUQf3Q2@phenom.ffwll.local>
 <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
Content-Disposition: inline
In-Reply-To: <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
X-ClientProxiedBy: BL6PEPF00016412.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:22e:400:0:1004:0:a) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|SJ1PR12MB6052:EE_
X-MS-Office365-Filtering-Correlation-Id: 7814c0dc-eb73-4334-9ca2-08dd397c1fcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MWRPSFNBUk53QzBvMlZkM0ZjSktDZEVCN2Uzby9oZFkyUFBlZVJDZUhQVmJm?=
 =?utf-8?B?WW94VW1OR2UxNDNWZDBhT0l1dklaUHdlSDVya1hSOUh2dzBBSTFJRFQzd0g2?=
 =?utf-8?B?MjB5UFV4Um5wa2NJYlgrc0pPeTRDU2Z4QmhOdVF0am5jM3hFck1PMWtlL3Nt?=
 =?utf-8?B?Z1B1Z1ozVFdrTnN5NGdNVCsvcDN2aFlMMGxsdVhCWmxZNVdSMzZiYW5tYTJ5?=
 =?utf-8?B?dEI5cDhWUXVwbkh5N2dJMmVCOEdqVzJPMU5ycEJHN0JNQ2ZLSWtXcFllMGNI?=
 =?utf-8?B?UnUvK0Z5S041YzJNZnJ3bFlWYkZuMUludEVEb0hac21sb29wSkdmV1lYVUE3?=
 =?utf-8?B?WExKVTlHRVpjeGNqUnlJL2hTUVVjbGdKcVFZTW9BSHJXYXMzK0hlRGZDMzNZ?=
 =?utf-8?B?LzdpYlRuU3hIL2hVWEtvR05wY2lkczY5eTBsYXZNSGIxNVR4Y0NzN2JwTFFP?=
 =?utf-8?B?NnBoSEJXTUt0U0dPQWZHVU9zUkxaNjZVRUlRRDZZUWo1L2hSQkU0UWNheUJN?=
 =?utf-8?B?cU9jY01SbkRkak9vcDdQa29wTGFXOFhUdXdudnp6ZkdKVHlVTzdKMjBBemlB?=
 =?utf-8?B?WlhCeldnellmKzhFNFFVYmlxeWVPa3NPQWpFbitJeWU2ejR3U3pPQ0RXVjdQ?=
 =?utf-8?B?V2Vnd3pYWnlLaDVselVCdzVjMkFIL0t3VWJKRlJlMVRPeUNyWmltSnB5bUho?=
 =?utf-8?B?aml2QjBLZC96eGp6OERJT2JReUdENmUxaWkzNWJSUTFaTyt4TlFRYXk0VXFp?=
 =?utf-8?B?MUx3L2xiNXE2cjh1MFV0NW13ZGxZUFRTdTU1ckhpeWh0Z3RTOWxvakdkdzlt?=
 =?utf-8?B?bTFURVcxanhNRGdCck03L3lraDdCY0pRSDVlZGFJVSs4RlVyeE9CUkVwZFFx?=
 =?utf-8?B?NTM1blVpVFJCWFFPTitMeCtTNEMxZFF6OXN5S24xdnByKytCejU2WktnTWlX?=
 =?utf-8?B?N1JiS3kxQStiU2F6ZFk0SWhLSksyc2Ezdmd6MzhpZWpON3Uva0pMZGo0TDl4?=
 =?utf-8?B?bFVUcXZhaHVXS0RBMis2YWJSNDB1NXAxdDNreC9lQTdPMUMzQThkR2tlc210?=
 =?utf-8?B?SktCbFVSajlWcHlqSXkyckt5bUpEZE9CYUkrZ2VvSTJDREh6c2xJMm5RTTBh?=
 =?utf-8?B?eEpMME1XT2JqRU9PYUZma3VFTmpQY2RVUE11b2hkaThCQ2ZiQmhqRTFYMDY3?=
 =?utf-8?B?dmJHa052VlFBb3VrSkM0VTc0ZnlBaDhOZ2lqOXFvZEErblZpbEZOR3Z4N1FZ?=
 =?utf-8?B?blBkU3VTbWpGZFY5RTU1QWlYTXZ5dnY3M2V2TkIzdnZWbE1RTE01amJJY0VO?=
 =?utf-8?B?OVV6UEdDUDRVMEtlczFtQXdzMTRzaU1xcTdWN1V5eTNrR3ZqTFhrczM0LzlB?=
 =?utf-8?B?VWdUZGw2d01kMTUwY1ZXdEFCeEh1Qkd4czdzeUlERFp1NDRpVVA2cUdheUhH?=
 =?utf-8?B?WlZmaThRQ1c1OE14VkJHbVFhMzQwMXhUbGljcmE0cnUwa0x6R2JuWnI4cmls?=
 =?utf-8?B?b2FSRFpPT2swMTJmL1pjdVFQTG40Y0NBaG1QNzZjaVl3eHpWZ0NVYzd1S0JU?=
 =?utf-8?B?b09zTkMycGJLQ3RVc1RHc08zcUdZd0tTeDJ4MGMzdVlhOUNkemlscjBlK1c0?=
 =?utf-8?B?UWlBYXpKSkJQYkNsNG1QVTlEN3Z5OGdrZytlQlBDVFNmV1orS0l4YTZieEYr?=
 =?utf-8?B?ZnJWZ3JOL1hlWU5SRWhVZXhsM2RPaWZPbnlSUDNiUk1NM0hlMGlPWFVXc3hZ?=
 =?utf-8?B?QytzOEhnRVpELzlLdzd4QzkwK1ZVODVUQ1hSczFUM3VoVHJ2VWFMOXlSUU5j?=
 =?utf-8?B?N1FxMmdBbUozalJSNW10bjVPZGNIU0I5Q1VaZDhLN3NlK1FURU1UOXk0M0h6?=
 =?utf-8?Q?oV2kd0hW5H9PI?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RGZmYW9NL0hyU0lNZ2JTWTJpZ0xHRWhCUGpmVktzVlF5d25IN3MrRUM2Z3l0?=
 =?utf-8?B?U2JUV05MSis5NmZoWjNCSncrOWZ5TUoxdjhKY2d6OGMzNUl3SGFQSGZMN1dR?=
 =?utf-8?B?NTFNRkVhRFZDdU80QzRKVVNpQndiT3drUnhjbVV5cHVaM0FYYjJnNzB3bjR5?=
 =?utf-8?B?NTBJWmRMWjJVbkROMDkydWFyekUxVDZpbHN4aGZuMDlkUHBwempTWXhtZnNy?=
 =?utf-8?B?UTQwN3VlZG1FS3N2ZklxSXl0RVRKS2R3d1dTUzNmYXJ1cjk5aUJhTUh2S3dZ?=
 =?utf-8?B?MDBHbzdzZUNpU2dBYzIxbVlDakVuWGhoalJGMjJoY3FBekJ1b1V3MVR5QzNM?=
 =?utf-8?B?VGpONGYwUWRwcnhKYUlnbmhrYjBqQU1IM2h0dExMcXVsV25rY2xZZHpwdTNz?=
 =?utf-8?B?YVhuWC9HcndhTHYxeFc3RzRmUElWaC9NWHNnWTljd0RXR25QbktwQ2M4TnNs?=
 =?utf-8?B?NFBUbCtwVnFTY2tUVXBLd21JMDNrT2REUHFwQTZ6cEQ1dUpiMjg0b1N4U2ZY?=
 =?utf-8?B?MXcyQjBWTk5KdHV5c04vb3RoektrSTR2U2ErZDBiY2RlY3dCOG5GU011N21l?=
 =?utf-8?B?WXFmN1pDd2MxeWpPWGZFNm92UmwxR1UrZWhvZ1M5Q01ENVZuU0JkNE5IOWRm?=
 =?utf-8?B?bjRCUVpJUkNzTUdTZDJ5cjY0N3NMMithRy9ZNytwZkF0eXpxei9BRkJ0WEFF?=
 =?utf-8?B?S2ZMTHlQaEZhRzVyOVc5NEYzVzFIYVJhakxkMG00bkVtcmJFU2IrekxaQlJJ?=
 =?utf-8?B?V0JrZmR0ZUo0SVF2OGx0VzU1NEhSRnVLdExCKzhtQm5UZVJmNHB2aUtIR1RI?=
 =?utf-8?B?Zi96NXBsMjNPZGVUVjFUelIxekpOS09sdXVmQ29yZDhBby9WNzd2NjR6Zkt5?=
 =?utf-8?B?bU9sa3lWaG1NclJLcnRIYjRoTERTblBBZ25kUXRYV1RlRWJLcTNxNGE1R09i?=
 =?utf-8?B?WHRsRldKNEUzcEcxZEtQUkhUQ2w0djE3RUtwRVNSRVFlL2VjMGhDQnRqUk1y?=
 =?utf-8?B?cEhMZDRwVmpEVkRrSkN6NE02bHRraW5UNWRCVm5ha0lCazFYamVvYjlnV1Yv?=
 =?utf-8?B?NVQyOGtzQkZCSitaMUNCbmVrZVYyTnVETllVNmhONWpVZTNyVjJHSFlkUFRj?=
 =?utf-8?B?Q2xscHRxam13Z3hiNldYdks3OUF4YTNDTDhNdlR2T0JaVG5kb2RvVDJRaFE2?=
 =?utf-8?B?N2V1ZGhSdGs2V3VnSVJMVVdiVGdGYVpXQlcrRytsalptT3dIQzR5ZWVEQ2lU?=
 =?utf-8?B?TnVFTDVXT2ZOeG8va3Z2TlJsZTZJdEVtM2hxQmFtVDB5RUlZTXErSVd2Mzdz?=
 =?utf-8?B?MkNIdDBGU1FMSGp0RG9UMDRMSHo3aVU3RDdrektONXJxRnFwWVg0Sll4MzBk?=
 =?utf-8?B?bHJwb2RBZlJhaTNTNVZIR2w3WTB3ck8wOWpTcUl2S2Fsb0FLUHZMaStlY0dV?=
 =?utf-8?B?cVZVQmR0dE41VFBKNXY5MHQ4NThBSkNHZ21lSnlPS0g3Z240NCtheFgrdDRs?=
 =?utf-8?B?bmtOamh4czhwdVFraC9OclN3Vi9YVWJTYXBhSHJSZVkxeGNsQlEwdXlaTFE5?=
 =?utf-8?B?dkU5S0VVMmhZSGRGWDYrTUpqb1ltMERib2ZJaWdDa2JuN05jZnVqaERpV0JV?=
 =?utf-8?B?ZDdoR0o5amNWQ3pHK3hVNjBXTzNZanRMNzdPdG1qeWdYaUpzVDNCVGo4SUpQ?=
 =?utf-8?B?YVh2ekxwM2JyV1B2cVo1VTNOTTJBNENqREtyUlJaMkJrNktLZEs4VXFIcnRF?=
 =?utf-8?B?cnRvWUJTekFId21kUXhkdThzSEpUeENXRnF1UEgyUWpTaGhKdldybHV5a0sx?=
 =?utf-8?B?ampjMUJtWlVqVGFvbUN4QU5FN0xzZi9yMm9CbXlrNUk1L0dMREdRSkx4ckt2?=
 =?utf-8?B?eFVKNi9zZFRTZWd1NjBmYm1rcnQ5SUhRSzF0SVFtc2VYRlFXZTRaNmNjVEZJ?=
 =?utf-8?B?OE9QcWhsdlN1eGoxekN1M01xU1I2c09QT0NhRk5TeDhmL2FKemF2WnJtdnhx?=
 =?utf-8?B?dUpoajM4clRRQXROSkQyR2NSK2lCNnd5NW9zYWQ0L0FYVTQwYVJhbE4ybVA4?=
 =?utf-8?B?Y0p1cDYwRE5hcjJLWnpxRmxRV1BsZjR1cnlpbjNoaUlpOW1jcW5YcTZoZlVY?=
 =?utf-8?Q?d4c4OVU4bkVhA8XnznPu9jbJ5?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7814c0dc-eb73-4334-9ca2-08dd397c1fcb
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 17:59:03.0532
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iAYIg5FInixg/IRUfEPbXINngwYLvaalhQ+le372qzHQ3cqKKsP8a/ey0DfR0q3d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR12MB6052
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 97ADC3F602
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.236.88:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.88:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: 23L4NM7RVLYZ6HNPZGVG3BY3N6V6NQKE
X-Message-ID-Hash: 23L4NM7RVLYZ6HNPZGVG3BY3N6V6NQKE
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/23L4NM7RVLYZ6HNPZGVG3BY3N6V6NQKE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKYW4gMjAsIDIwMjUgYXQgMDE6MTQ6MTJQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KV2hhdCBpcyBnb2luZyB3cm9uZyB3aXRoIHlvdXIgZW1haWw/IFlvdSByZXBs
aWVkIHRvIFNpbW9uYSwgYnV0DQpTaW1vbmEgVmV0dGVyIDxzaW1vbmEudmV0dGVyQGZmd2xsLmNo
PiBpcyBkcm9wcGVkIGZyb20gdGhlIFRvL0NDDQpsaXN0Pz8/IEkgYWRkZWQgdGhlIGFkZHJlc3Mg
YmFjaywgYnV0IHNlZW1zIGxpa2UgYSB3ZWlyZCB0aGluZyB0bw0KaGFwcGVuLg0KDQo+IFBsZWFz
ZSB0YWtlIGFub3RoZXIgbG9vayBhdCB3aGF0IGlzIHByb3Bvc2VkIGhlcmUuIFRoZSBmdW5jdGlv
biBpcyBjYWxsZWQNCj4gZG1hX2J1Zl9nZXRfcGZuXyp1bmxvY2tlZCogIQ0KDQpJIGRvbid0IHRo
aW5rIFNpbW9uYSBhbmQgSSBhcmUgZGVmZW5kaW5nIHRoZSBpbXBsZW1lbnRhdGlvbiBpbiB0aGlz
DQpzZXJpZXMuIFRoaXMgc2VyaWVzIG5lZWRzIHdvcmsuDQoNCldlIGhhdmUgYmVlbiB0YWxraW5n
IGFib3V0IHdoYXQgdGhlIGltcGxlbWVudGF0aW9uIHNob3VsZCBiZS4gSSB0aGluaw0Kd2UndmUg
YWxsIGJlZW4gY2xlYXIgb24gdGhlIGlkZWEgdGhhdCB0aGUgRE1BIGJ1ZiBsb2NraW5nIHJ1bGVz
IHNob3VsZA0KYXBwbHkgdG8gYW55IGRlc2NyaXB0aW9uIG9mIHRoZSBtZW1vcnksIHJlZ2FyZGxl
c3Mgb2YgaWYgdGhlIGFkZHJlc3MNCmFyZSBDUFUsIERNQSwgb3IgcHJpdmF0ZS4NCg0KSSBhZ3Jl
ZSB0aGF0IHRoZSBpZGVhIG9mIGFueSAiZ2V0IHVubG9ja2VkIiBjb25jZXB0IHNlZW1zIG5vbnNl
bnNpY2FsDQphbmQgd3Jvbmcgd2l0aGluIGRtYWJ1Zi4NCg0KPiBJbnNlcnRpbmcgUEZOcyBpbnRv
IENQVSAob3IgcHJvYmFibHkgYWxzbyBJT01NVSkgcGFnZSB0YWJsZXMgaGF2ZSBhDQo+IGRpZmZl
cmVudCBzZW1hbnRpY3MgdGhhbiB3aGF0IERNQS1idWYgdXN1YWxseSBkb2VzLCBiZWNhdXNlIGFz
IHNvb24gYXMgdGhlDQo+IGFkZHJlc3MgaXMgd3JpdHRlbiBpbnRvIHRoZSBwYWdlIHRhYmxlIGl0
IGlzIG1hZGUgcHVibGljLg0KDQpOb3QgcmVhbGx5Lg0KDQpUaGUgS1ZNL0NQVSBpcyBmdWxseSBj
b21wYXRpYmxlIHdpdGggbW92ZSBzZW1hbnRpY3MsIGl0IGhhcw0KcmVzdGFydGFibGUgcGFnZSBm
YXVsdHMgYW5kIGNhbiBpbXBsZW1lbnQgZG1hYnVmJ3MgbW92ZSBsb2NraW5nDQpzY2hlbWUuIEl0
IGNhbiB1c2UgdGhlIHJlc3YgbG9jaywgdGhlIGZlbmNlcywgbW92ZV9ub3RpZnkgYW5kIHNvIG9u
IHRvDQppbXBsZW1lbnQgaXQuIEl0IGlzIGEgYnVnIGlmIHRoaXMgc2VyaWVzIGlzbid0IGRvaW5n
IHRoYXQuDQoNClRoZSBpb21tdSBjYW5ub3Qgc3VwcG9ydCBtb3ZlIHNlbWFudGljcy4gSXQgd291
bGQgbmVlZCB0aGUgZXhpc3RpbmcNCnBpbiBzZW1hbnRpY3MgKGllIHdlIGNhbGwgZG1hX2J1Zl9w
aW4oKSBhbmQgZG9uJ3Qgc3VwcG9ydA0KbW92ZV9ub3RpZnkpLiBUbyB3b3JrIHdpdGggVkZJTyB3
ZSB3b3VsZCBuZWVkIHRvIGZvcm1hbGl6ZSB0aGUgcmV2b2tlDQpzZW1hbnRpY3MgdGhhdCBTaW1v
bmEgd2FzIGRpc2N1c3NpbmcuDQoNCldlIGFscmVhZHkgaW1wbGVtZW50IGJvdGggb2YgdGhlc2Ug
bW9kYWxpdGllcyBpbiByZG1hLCB0aGUgbG9ja2luZyBBUEkNCmlzIGZpbmUgYW5kIHdvcmthYmxl
IHdpdGggQ1BVIHBmbnMganVzdCBhcyB3ZWxsLg0KDQpJJ3ZlIGltYWdpbmVkIGEgc3RhZ2VkIGZs
b3cgaGVyZToNCg0KIDEpIFRoZSBuZXcgRE1BIEFQSSBsYW5kcw0KIDIpIFdlIGltcHJvdmUgdGhl
IG5ldyBETUEgQVBJIHRvIGJlIGZ1bGx5IHN0cnVjdCBwYWdlIGZyZWUsIGluY2x1ZGluZw0KICAg
IHNldHRpbmcgdXAgUDJQDQogMykgVkZJTyBwcm92aWRlcyBhIGRtYnVmIGV4cG9ydGVyIHVzaW5n
IHRoZSBuZXcgRE1BIEFQSSdzIFAyUA0KICAgIHN1cHBvcnQuIFdlJ2QgaGF2ZSB0byBjb250aW51
ZSB3aXRoIHRoZSBzY2F0dGVybGlzdCBoYWNrcyBmb3Igbm93Lg0KICAgIFZGSU8gd291bGQgYmUg
YSBtb3ZlX25vdGlmeSBleHBvcnRlci4gVGhpcyBzaG91bGQgd29yayB3aXRoIFJETUENCiA0KSBS
RE1BIHdvcmtzIHRvIGRyb3Agc2NhdHRlcmxpc3QgZnJvbSBpdHMgaW50ZXJuYWwgZmxvd3MgYW5k
IHVzZSB0aGUNCiAgICBuZXcgRE1BIEFQSSBpbnN0ZWFkLg0KIDUpIFZGSU8vUkRNQSBpbXBsZW1l
bnQgYSBuZXcgbm9uLXNjYXR0ZXJsaXN0IERNQUJVRiBvcCB0bw0KICAgIGRlbW9uc3RyYXRlIHRo
ZSBwb3N0LXNjYXR0ZXJsaXN0IHdvcmxkIGFuZCBkZXByZWNhdGUgdGhlIHNjYXR0ZXJsaXN0DQog
ICAgaGFja3MuDQogNikgV2UgYWRkIHJldm9rZSBzZW1hbnRpY3MgdG8gZG1hYnVmLCBhbmQgVkZJ
Ty9SRE1BIGltcGxlbWVudHMgdGhlbQ0KIDcpIGlvbW11ZmQgY2FuIGltcG9ydCBhIHBpbm5hYmxl
IHJldm9rYWJsZSBkbWFidWYgdXNpbmcgQ1BVIHBmbnMNCiAgICB0aHJvdWdoIHRoZSBub24tc2Nh
dHRlcmxpc3Qgb3AuDQogOCkgUmVsZXZhbnQgR1BVIGRyaXZlcnMgaW1wbGVtZW50IHRoZSBub24t
c2NhdHRlcmxpc3Qgb3AgYW5kIFJETUENCiAgICByZW1vdmVzIHN1cHBvcnQgZm9yIHRoZSBkZXBy
ZWNhdGVkIHNjYXR0ZXJsaXN0IGhhY2tzLg0KDQpYdSdzIHNlcmllcyBoYXMganVtcGVkIGFoZWFk
IGEgYml0IGFuZCBpcyBtaXNzaW5nIGluZnJhc3RydWN0dXJlIHRvDQpidWlsZCBpdCBwcm9wZXJs
eS4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BAABA3B73
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 14:56:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D73844980
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 12:56:30 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013034.outbound.protection.outlook.com [40.93.196.34])
	by lists.linaro.org (Postfix) with ESMTPS id 3A2E743D54
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Sep 2025 12:56:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=jGTWt1DZ;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.34 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x00A6W+r7Eyk+yTJoU7AUOG+WLYKhmOZ2H/hqtm+KRb6gwCEg31/U653QLocOzQbiy+h+HstnookImxlO6mVTZxWmJQm1BS/J+wFFHx3fK6ZFRO8bd0WifbeksOW2db9/ssiz/BUd8U6pXXS8WfulgMXilGCbEo/AsbDWpc0gfIgrq8g/wNKVgts+Bk5ZrLaCSQePvZ8R8rsXUVDY7MZohE76rnGiipqWqWbIgmqa+ZAYvoXiUMcKQ+RxusYeBok1kEp6ltvhfCrUV9jY3Rn44wOfc+p3OlSExyz2exinCsDS212dfP4QmScbYASmyx04R1zMJaPjO30Z1A1FVUp6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/7VZvyKqAtuPBi3as9LBeqhRAvL5ZogWViEjC/sQKM=;
 b=G2s9/pFE/jsosmZ1WuOrcftPCDavBKEOw6P9WDmsSSDOOVu4mvHMonTO8L+Io4koPvzVGLcWboGrdIl/KQl4plYkRENYS0o5sZ7Bmh6oFcuwuTKDLH41xDFHcMhHaZZRHjTicV0gFQ5KThuJBmLQBHbB3dixbkzKLcxVPrjIFYvR7uSr3UaJlcx8/edTrTMO0J9RQsETZpNMYD+/5w+YsoMHzc1ShtBjyf6Wog/Aij5YP3KJCvJRugERNq5uln4XJvdWeSyb5NR7wI758eEpjSVkkpaUk+S93P6YfoPttYofU8sgqs+rI7aNY6bvxxW6xU1MTerzHFxfCs+PCtFK4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d/7VZvyKqAtuPBi3as9LBeqhRAvL5ZogWViEjC/sQKM=;
 b=jGTWt1DZ8nOiNkQjOcHl8k/BT1s5/Dfcb42rkEwuUikcsXebpHW9NOE4+zsEuiFTpiIIyvze9Pjy8S7r/XbxJo6UNmN8DoTIbrijcZhm2iR1vl383klbjAoQWdvAtNmaRlGLNiH3vgS2kIMGvYLzc+v6jNt8HEjQiLmGUVX+71g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB7928.namprd12.prod.outlook.com (2603:10b6:8:14c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Fri, 26 Sep
 2025 12:56:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 12:56:22 +0000
Message-ID: <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
Date: Fri, 26 Sep 2025 14:56:11 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-xe@lists.freedesktop.org
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
X-ClientProxiedBy: MN2PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:208:c0::30) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB7928:EE_
X-MS-Office365-Filtering-Correlation-Id: fd0b918d-3e6e-4e36-3b43-08ddfcfc1838
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZXVrU3NhKzlwYmtnRnpUdElQbFJ1TXJxeGlvZDZTWG4vTStTVGVaaFN0VE9S?=
 =?utf-8?B?UVpTVFVxOWoxK0QzMW5HZ1FjQ3RLU0RwVk90OHpLZkovNnBFdjJmUzRKcGty?=
 =?utf-8?B?dnpzeUdPQUxaWTlPcHdlNzNQR1NQSlllTVFHVHp5OWVLbG4ycTE5TnNoRktE?=
 =?utf-8?B?bTJkZkp0T2lHVmJkNFJvWEE1azMxZGFOdlN4TjBuR0x5UHBVa0lUaXN4bHdu?=
 =?utf-8?B?L2MwVHZJSlNld3ArWXMvWlE0c3hQQWZkY000WVk2Tmd3WFhmZ3JVRE15Qk9t?=
 =?utf-8?B?cElMeWdobHZjOE00S0gwaWtyUGVtdHI2dmxXZkxTRXFTRnRUK3dzR1NnLzVO?=
 =?utf-8?B?WjJzOG52TGRrZ0MvUkJVY29GaWNSTW5qOE15SlJ0U2R6dERneW54VG5mYzRq?=
 =?utf-8?B?QlB0TTZ0bFZsL3g3dFJLS0FjVG1ETHZmZ2FDQTRFYUdXbkdzZjAzN2RERVVM?=
 =?utf-8?B?UUVVbFlLMlpBUEFaSUllWGluNWcrQmZ1RTJNQmNTa3NCQXUvOXhnOVUwQmZG?=
 =?utf-8?B?K0dFOENCREZkTDRsczJmWXRXeW1nVGpUM015RjM5OUozTmNQUStqNEhqd2RZ?=
 =?utf-8?B?RnpsS2lqc3FEb0h0TDMxa1hrNzVBeFRGUmQ1ODkwdVFxZ2dkd2xidkdUdGhL?=
 =?utf-8?B?T3U5L25QVHV6Z0ZhWkhlakI3MkJ4TVBEUjJzQ3c4MEthS1J4UVlFY3FsakpR?=
 =?utf-8?B?U0M5dk9FR0MvVmdEeWk0YloyU1lrSGpZN0lENHVyblA2YjhYRnViQmR1S21S?=
 =?utf-8?B?TmtFRXJvMHMyQ3VLT3QxcC9qQVRkc2ZtTk90Z0hDaGJoQ29oSlZVSUZHUlJm?=
 =?utf-8?B?MnkyNUJuYnhnY3pJZXhidUxCVVQwV3FqQjl2SE9TbitpSDJkKytqTityMzdx?=
 =?utf-8?B?b1ZPY01kUDB4WTBkbEtuN0R6SHVtYjIxanVPZWhodG1xOVpmNTBQMFNBL045?=
 =?utf-8?B?Y3hscHRlL1g4SlF5S1VmM00ra2ZPZXhVc1RVVWdZcHFBMDRqSjRXY3pHSFZj?=
 =?utf-8?B?MnBBa1p4azRra09kanMwWGhEaE1WMlJSU1JvY3dNMTN1YlNLQzJwVktVZjlr?=
 =?utf-8?B?OFA1bncxS1h5cmUveElBK0VGVmpNOGF5NEdzVlkzQ3pUZWovakoyeUlud2NC?=
 =?utf-8?B?OVlxK2p1VisxK3NxTUVoYnp3MzN2eVRBalR4Z0xlTnNld0h5NmpsQ1M2Nm41?=
 =?utf-8?B?YmpwMmFybkIwQVlrOEJoamF4WllsREpuc1E0Z245WGVyUzlVaWRTbWxTTWtj?=
 =?utf-8?B?WWhHUkN6czNIeFgrTGswak0xWjA5M2gyeDFVeDJQd1lTTTZhcDI1SE1GdmVy?=
 =?utf-8?B?N2N0VmZkajhDd0FHeDZNQVFKMnZKOXFIZXVmeTE2YUo1NjdTMjBKLzhJVis2?=
 =?utf-8?B?dWg0VjYyTGZwZU5ud1ZIcWR1cDZTTFRuVjBuN2pJTFlja01qNFZYODltUXJT?=
 =?utf-8?B?dU5LTWZETkVjZzl0eWxaUjlHNG9EdUtmU1doUks3VnpDQmU3NTRmK2RPekRr?=
 =?utf-8?B?ZW9GSUZsbzVmSFBQTzQ5VlFTSTZobVVSUXc3a20xY0FVdnF3TEhLSUZ2SEFu?=
 =?utf-8?B?eFV5c0pkTDRkb3ZtRUtEZXBZL0djMjF0ejMvZzU3Zlg0d3lLeXVIdlBaZVBR?=
 =?utf-8?B?dHhhVXVsaFc3ekpMeHA5eXVuSVlTdkNqL29NMnJDcXZ3bjVzQlZjaUpidndp?=
 =?utf-8?B?NXUxVXZhcFVRL01DYzAyMDJ1Y29Cd3ZlK3BobGU4d2dVVm4wSFZVK1F1VEsy?=
 =?utf-8?B?cVFrL20yMUJlSTVvMUE0QjZxbWFTNFFPZGJOaHdVTHJNNmIxckFjT2NXaEww?=
 =?utf-8?B?aXFmYnBGQmFDQS9uOFFja1lZb3ZxLytTZmJRY3pDRDdvWUQwZVBncGl5VzRC?=
 =?utf-8?B?aDZOdTk1bmp2VlJONlFuRGU0S3kzRlNPMGp4U1dYbnRtUFNPc0RRM2txcjd1?=
 =?utf-8?Q?ooP+5iI0JuNbX8IC9X6UFUmhznvQi5Y5?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OWg0Z1oxR3FkNnRLRC9oMVRLaWRUelVuVGZhdTk4Y0xpWjhnM2xnb0ZLa0hJ?=
 =?utf-8?B?SXdEQ29rMGh2bW5YOWIzT251M1M1ODRVdFRaWWNwei9tcHhUUGlkaXRSU2RS?=
 =?utf-8?B?bXdkMWNydWh0NVhzNGtCZU51QUVGSGhaUUYxdG82ODFOSVpOcFlaRmNiK3hl?=
 =?utf-8?B?cG1aWmhabFBlTUpyaXpZbHN3OTlaSmZJOW0zczcxLzJFdlQxR2FMTm9hNWpZ?=
 =?utf-8?B?NzUwYllIdzZOSGUvK21BWGUwRElJaUlqTVh4VEYyNUZmaXFyUnFrVzZRelRo?=
 =?utf-8?B?Ym5XZzZhTFladEdKQnVGL0JRSytmYjV5VXVUYlJ1QmVlL0VlamREczRQRzcy?=
 =?utf-8?B?VldHU2ZKeGtTaXZmVDIwTGhoN002eDBDUklnWk1pSEJVdjEyMlFaOElvcFQw?=
 =?utf-8?B?Skx1QlZaV0x4UVg0SjlodGV2NmxubjFTOUNoaDBuemhJbS9uZDNrdGVWOXBo?=
 =?utf-8?B?a2NMS0doNlZuY0NEL2ptdnF6RTBYODRVU3R5c1lDWW1YajV1QzNscnprMTFM?=
 =?utf-8?B?cm5Tb0pQMmt4cHdSN0tGdTl2ditUZW1yaFl3MFJGLzByTWJVdzhiZHVBR3Fw?=
 =?utf-8?B?elVQdGFxaWltSjlHTk5mN05XNG9UVi9KWnBBZWZFVWFxVjZpbkZCTUZpZ0dn?=
 =?utf-8?B?c3cvOGpmOXFNUHdBbjRmYy9tM2NGbGhtRmxUUXBEOU9zSlZuMmoycmx0Tlht?=
 =?utf-8?B?VHdod3NWSEhGdjR0eG9JenhBS1kyTlhGSHpzQzJXM1FVUVExdHFiRkRxRkQ2?=
 =?utf-8?B?RVMybzA1bEdZNkNGU0JIbmJNQ1JBam1JaVhSaTJNZ1lZdlNvQ3pRU0xLRjJY?=
 =?utf-8?B?SVdvUEU1RzRudTRTS3A4TXljMjRGT0wreXFud0pUelc5N0RiREtvbCtickox?=
 =?utf-8?B?YVBjaEtMVnN3MVRLam4vNHAvUDJxWXM4alNFai95NnUwc2xkeGU2NDk5ZGk0?=
 =?utf-8?B?c3Fhb3BXOFBZRU9seXVTck5QbFM0bHlhRkJaUDF3dm12SE42MFo2ck1XOUpI?=
 =?utf-8?B?SXpGbHFIcTl6b1RkQyszcUJIc2djd0ZYR3NRak5pWnFJMFFDdG8yRFMwcHY1?=
 =?utf-8?B?VFBqVzVxcG02ait6WS85Wkx2K0xjQXZqeU5NeVlyaGxnMWJBN1dpN3lhdGRn?=
 =?utf-8?B?VmpRL0trVnBWOFI5T0lLTWNRZ05vYm0ra3NDWElOV3ZKbXJiTThReE8vbldF?=
 =?utf-8?B?SlhFb2l3c2VHT3VTL0gwSlJzSDBQUUl4SEJEQ2h6dko2Mmo0Q0JIMmxnZjR5?=
 =?utf-8?B?Q1FqcGN6Ym1wUEZaZEFCWElSeG40SjVvRlNHdmRBTFFqeWFYV1R1dXQ2MDFj?=
 =?utf-8?B?OHFHZ0FVVGlCc0JjZXNRbGhLVVc3WVFITWJkT3d2M21CeTdEWk5SU3FRM00v?=
 =?utf-8?B?R2R0TEFrYW0raWxBaUdMMXdReWRrYzI0MnlNNTQ0dWhORW04dVpTSVNLM21T?=
 =?utf-8?B?LzJ0bEZrbVlWMzFhQ3lzNlpCV2Q0M3l1dG5ZWTZZMmIyNk5zWFBXRzI5elpQ?=
 =?utf-8?B?SkkyRnZoT1BydTViZEVUQTBMZXhjcDA2azhuREQyaE1YUld0T3o0WmlzRjkr?=
 =?utf-8?B?Qy9Tc0MyUG1Kb2lPTmlub2k3UGRRcDZ2Um5LdHY0UXNXQTl4alFSUG1YWWlM?=
 =?utf-8?B?V3QxWWZnWFBjY1BjS0xtNTRXTkFpc2o2Z3htbGlrWDh2MWx2aEFqQUdpRDVV?=
 =?utf-8?B?VFpRQU5JSkpxWlJiWE5BaHE0NmVKY2NhVkUxdXpreXVnZU5XY3RrRXR2TTRq?=
 =?utf-8?B?Q25nbm5nZ1Uzdmd4b2FKOXVlSS9UOS81azJKQWRyeDlmK2k5RHZCYklZbGg3?=
 =?utf-8?B?eFg4K3JFNERSZDZlQklOUDA3cnQzNm44Z3l4ck5NZ3hNSHA2OEExNHI5U0lI?=
 =?utf-8?B?Mzhka3BYYjRRWi82YmZrRWJldU5INGRZSk02UGRNa0RwTUpPcXVETi9kcE9D?=
 =?utf-8?B?b2pPTG5zeVBsaURjK3BhUm15Z0w4NUVsVWZlZHNrd2drM0lKOUxkTE5XTTFD?=
 =?utf-8?B?eTZRakYxWW9VV1dGc1g4ZkdpYWpEcDFNVlZkSEdOYnJhbVVwMUdzc3FndXJU?=
 =?utf-8?B?NjYxZlo0MVdGVkFFZk5iQnRxQVJKWnYxOTJZMUoyNlcxZ2FyWWFPWW45RE5D?=
 =?utf-8?Q?YFVa5KnBQfV1X63rLKVckIFLA?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd0b918d-3e6e-4e36-3b43-08ddfcfc1838
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 12:56:22.6586
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sZXuMmqxpXQGKFmRqH7JDVYXEQv0i6YHQpHvV14tJutHeih5t7ILABfahLtM0ZvS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7928
X-Rspamd-Queue-Id: 3A2E743D54
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.196.34:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.93.196.34:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: O2ZSIOPVGSN74ZFUSL36YJQ7CCXW5SS5
X-Message-ID-Hash: O2ZSIOPVGSN74ZFUSL36YJQ7CCXW5SS5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, Jason Gunthorpe <jgg@nvidia.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/O2ZSIOPVGSN74ZFUSL36YJQ7CCXW5SS5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCk9uIDI2LjA5LjI1IDEwOjQ2LCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToNCj4gQWRkIGEg
ZnVuY3Rpb24gdG8gdGhlIGRtYV9idWZfYXR0YWNoX29wcyB0byBpbmRpY2F0ZSB3aGV0aGVyIHRo
ZQ0KPiBjb25uZWN0aW9uIGlzIGEgcHJpdmF0ZSBpbnRlcmNvbm5lY3QuIElmIHNvIHRoZSBmdW5j
dGlvbiByZXR1cm5zDQo+IHRoZSBhZGRyZXNzIHRvIGFuIGludGVyY29ubmVjdC1kZWZpbmVkIHN0
cnVjdHVyZSB0aGF0IGNhbiBiZQ0KPiB1c2VkIGZvciBmdXJ0aGVyIG5lZ290aWF0aW5nLg0KPiAN
Cj4gQWxzbyBhZGQgYSBmaWVsZCB0byB0aGUgZG1hX2J1Zl9hdHRhY2htZW50IHRoYXQgaW5kaWNh
dGVzIHdoZXRoZXINCj4gYSBwcml2YXRlIGludGVyY29ubmVjdCBpcyB1c2VkIGJ5IHRoZSBhdHRh
Y2htZW50Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1
Zi5oIHwgNTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiBpbmRleCBkNThl
MzI5YWMwZTcuLjI1ZGJmMWZlYTA5YSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEt
YnVmLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gQEAgLTQ0Miw2ICs0NDIs
MzkgQEAgc3RydWN0IGRtYV9idWYgew0KPiAgI2VuZGlmDQo+ICB9Ow0KPiAgDQo+ICsvKiBSRkM6
IFNlcGFyYXRlIGhlYWRlciBmb3IgdGhlIGludGVyY29ubmVjdCBkZWZpbmVzPyAqLw0KPiArDQo+
ICsvKioNCj4gKyAqIHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdCAtIFByaXZhdGUgaW50ZXJj
b25uZWN0DQo+ICsgKiBAbmFtZTogVGhlIG5hbWUgb2YgdGhlIGludGVyY29ubmVjdA0KPiArICov
DQo+ICtzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3Qgew0KPiArCWNvbnN0IGNoYXIgKm5hbWU7
DQo+ICt9Ow0KPiArDQo+ICsvKioNCj4gKyAqIHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdF9h
dHRhY2hfb3BzIC0gSW50ZXJjb25uZWN0IGF0dGFjaCBvcHMgYmFzZS1jbGFzcw0KPiArICoNCj4g
KyAqIERlY2xhcmVkIGZvciB0eXBlLXNhZmV0eS4gSW50ZXJjb25uZWN0IGltcGxlbWVudGF0aW9u
cyBzaG91bGQgc3ViY2xhc3MgdG8NCj4gKyAqIGltcGxlbWVudCBuZWdvdGlhdGlvbi1zcGVjaWZp
YyBvcHMuDQo+ICsgKi8NCj4gK3N0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdF9hdHRhY2hfb3Bz
IHsNCj4gK307DQo+ICsNCj4gKy8qKg0KPiArICogc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0
X2F0dGFjaCAtIEludGVyY29ubmVjdCBzdGF0ZQ0KPiArICogQGludGVyY29ubmVjdDogVGhlIHN0
cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdCBpZGVudGlmeWluZyB0aGUgaW50ZXJjb25uZWN0DQo+
ICsgKg0KPiArICogSW50ZXJjb25uZWN0IGltcGxlbWVudGF0aW9ucyBzdWJjbGFzcyBhcyBuZWVk
ZWQgZm9yIGF0dGFjaG1lbnQgc3RhdGUNCj4gKyAqIHRoYXQgY2FuJ3QgYmUgc3RvcmVkIGVsc2V3
aGVyZS4gSXQgY291bGQsIGZvciBleGFtcGxlLCBob2xkIGEgcG9pbnRlcg0KPiArICogdG8gYSBy
ZXBsYWNlbWVudCBvZiB0aGUgc2ctbGlzdCBhZnRlciB0aGUgYXR0YWNobWVudCBoYXMgYmVlbiBt
YXBwZWQuDQo+ICsgKiBJZiBubyBhZGRpdGlvbmFsIHN0YXRlIGlzIG5lZWRlZCwgYW4gZXhwb3J0
ZXIgY291bGQgZGVmaW5lIGEgc2luZ2xlDQo+ICsgKiBzdGF0aWMgaW5zdGFuY2Ugb2YgdGhpcyBz
dHJ1Y3QuDQo+ICsgKi8NCj4gK3N0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdF9hdHRhY2ggew0K
PiArCWNvbnN0IHN0cnVjdCBkbWFfYnVmX2ludGVyY29ubmVjdCAqaW50ZXJjb25uZWN0Ow0KPiAr
fTsNCj4gKw0KPiAgLyoqDQo+ICAgKiBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIC0gaW1wb3J0
ZXIgb3BlcmF0aW9ucyBmb3IgYW4gYXR0YWNobWVudA0KPiAgICoNCj4gQEAgLTQ3NSw2ICs1MDgs
MjEgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB7DQo+ICAJICogcG9pbnQgdG8gdGhlIG5l
dyBsb2NhdGlvbiBvZiB0aGUgRE1BLWJ1Zi4NCj4gIAkgKi8NCj4gIAl2b2lkICgqbW92ZV9ub3Rp
ZnkpKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7DQo+ICsNCj4gKwkvKioNCj4g
KwkgKiBAc3VwcG9ydHNfaW50ZXJjb25uZWN0OiBbb3B0aW9uYWxdIC0gRG9lcyB0aGUgZHJpdmVy
IHN1cHBvcnQgYSBsb2NhbCBpbnRlcmNvbm5lY3Q/DQo+ICsJICoNCj4gKwkgKiBEb2VzIHRoZSBp
bXBvcnRlciBzdXBwb3J0IGEgcHJpdmF0ZSBpbnRlcmNvbm5lY3Q/IFRoZSBpbnRlcmNvbm5lY3Qg
aXMNCj4gKwkgKiBpZGVudGlmaWVkIHVzaW5nIGEgdW5pcXVlIGFkZHJlc3MgZGVmaW5lZCBpbnN0
YW50aWF0ZWQgZWl0aGVyIGJ5IHRoZSBkcml2ZXINCj4gKwkgKiBpZiB0aGUgaW50ZXJjb25uZWN0
IGlzIGRyaXZlci1wcml2YXRlIG9yIGdsb2JhbGx5DQo+ICsJICogKFJGQyBhZGRlZCB0byB0aGUg
ZG1hLWJ1Zi1pbnRlcmNvbm5lY3QuYyBmaWxlKSBpZiBjcm9zcy1kcml2ZXIuDQo+ICsJICoNCj4g
KwkgKiBSZXR1cm46IEEgcG9pbnRlciB0byB0aGUgaW50ZXJjb25uZWN0LXByaXZhdGUgYXR0YWNo
X29wcyBzdHJ1Y3R1cmUgaWYgc3VwcG9ydGVkLA0KPiArCSAqICVOVUxMIG90aGVyd2lzZS4NCj4g
KwkgKi8NCj4gKwljb25zdCBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfYXR0YWNoX29wcyAq
DQo+ICsJKCpzdXBwb3J0c19pbnRlcmNvbm5lY3QpKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQg
KmF0dGFjaCwNCj4gKwkJCQkgY29uc3Qgc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0ICppbnRl
cmNvbm5lY3QpOw0KDQpUaGlzIGxvb2tzIGxpa2UgaXQgc2l0cyBpbiB0aGUgd3Jvbmcgc3RydWN0
dXJlLiBUaGUgZG1hX2J1Zl9hdHRhY2hfb3BzIGFyZSB0aGUgb3BlcmF0aW9ucyBwcm92aWRlZCBi
eSB0aGUgaW1wb3J0ZXIsIGUuZy4gbW92ZSBub3RpZmljYXRpb24uDQoNCldoZW4gd2Ugd2FudCB0
byBjaGVjayBpZiB1c2luZyBhbiBpbnRlcmNvbm5lY3QgaXMgcG9zc2libGUgd2UgbmVlZCB0byBk
byB0aGF0IG9uIHRoZSBleHBvcnRlciwgZS5nLiBkbWFfYnVmX29wcygpLg0KDQpJIHRoaW5rIHdl
IHNob3VsZCBoYXZlIGFuIG1hcF9pbnRlcmNvbm5lY3QoY29ubmVjdG9yIHR5cGUgZGVzY3JpcHRv
cikgdGhhdCB0aGUgaW1wb3J0ZXIgY2FuIHVzZSB0byBlc3RhYmxpc2ggYSBtYXBwaW5nIGZvciBp
dHNlbGYuDQoNCkFkZGl0aW9uYWwgdG8gdGhhdCB3ZSBuZWVkIGFuIHVubWFwX2ludGVyY29ubmVj
dCgpIHRvIGxldCB0aGUgZXhwb3J0ZXIga25vdyB0aGF0IGFuIGltcG9ydGVyIGRvZXNuJ3QgbmVl
ZCBhIHNwZWNpZmljIG1hcHBpbmcgYW55IG1vcmUuDQoNCj4gIH07DQo+ICANCj4gIC8qKg0KPiBA
QCAtNDg0LDYgKzUzMiw4IEBAIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgew0KPiAgICogQG5v
ZGU6IGxpc3Qgb2YgZG1hX2J1Zl9hdHRhY2htZW50LCBwcm90ZWN0ZWQgYnkgZG1hX3Jlc3YgbG9j
ayBvZiB0aGUgZG1hYnVmLg0KPiAgICogQHBlZXIycGVlcjogdHJ1ZSBpZiB0aGUgaW1wb3J0ZXIg
Y2FuIGhhbmRsZSBwZWVyIHJlc291cmNlcyB3aXRob3V0IHBhZ2VzLg0KPiAgICogQHByaXY6IGV4
cG9ydGVyIHNwZWNpZmljIGF0dGFjaG1lbnQgZGF0YS4NCj4gKyAqIEBpbnRlcmNvbm5lY3RfYXR0
YWNoOiBQcml2YXRlIGludGVyY29ubmVjdCBzdGF0ZSBmb3IgdGhlIGNvbm5lY3Rpb24gaWYgdXNl
ZCwNCj4gKyAqIE5VTEwgb3RoZXJ3aXNlLg0KPiAgICogQGltcG9ydGVyX29wczogaW1wb3J0ZXIg
b3BlcmF0aW9ucyBmb3IgdGhpcyBhdHRhY2htZW50LCBpZiBwcm92aWRlZA0KPiAgICogZG1hX2J1
Zl9tYXAvdW5tYXBfYXR0YWNobWVudCgpIG11c3QgYmUgY2FsbGVkIHdpdGggdGhlIGRtYV9yZXN2
IGxvY2sgaGVsZC4NCj4gICAqIEBpbXBvcnRlcl9wcml2OiBpbXBvcnRlciBzcGVjaWZpYyBhdHRh
Y2htZW50IGRhdGEuDQo+IEBAIC01MDMsNiArNTUzLDcgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCB7DQo+ICAJc3RydWN0IGxpc3RfaGVhZCBub2RlOw0KPiAgCWJvb2wgcGVlcjJwZWVyOw0K
PiAgCWNvbnN0IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgKmltcG9ydGVyX29wczsNCj4gKwlz
dHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfYXR0YWNoICppbnRlcmNvbm5lY3RfYXR0YWNoOw0K
DQpXZSBhbHJlYWR5IGhhdmUgYW4gaW1wb3J0ZXIgYW5kIGFuIGV4cG9ydGVyIHByaXZhdGUgdm9p
ZCAqLiBEbyB3ZSByZWFsbHkgbmVlZCB0aGF0Pw0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+
ICAJdm9pZCAqaW1wb3J0ZXJfcHJpdjsNCj4gIAl2b2lkICpwcml2Ow0KPiAgfTsNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B10A1941A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jan 2025 15:38:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1CC0744983
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Jan 2025 14:38:04 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2076.outbound.protection.outlook.com [40.107.94.76])
	by lists.linaro.org (Postfix) with ESMTPS id 488BC40D2B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Jan 2025 14:37:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=RCcIuzI1;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.94.76 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lu1B82B0aeMoqbE7C+Un0z8a4rUoei579XcV3k8H0EV9okTY3pqGERsP9wJJ0CK1CvH1f50rNWBsLwIzlIxaz1nyd7kNIbZ9flSP4y2GWMhejjADYTa4hV0fE3vLLpxheK6dTqSHEDi5/I+Ymx0g1BNfEMpJqLl8C9ewdac6b2IYu9Vrjjf1Y9Gu/NSCe0t/xhyg+iwqcAPCivxWUdt58P3kZBpRtBNRC0PPiNtVW+rY+WeMSkbpGiX5jsb2n0xnqs87rTAlXZ5lQJl+mqziN5udkacjlkbMCnOlGMuaPgr5HZlXjXEP9GlSHU9FlHS+RZbYIGP8I1XXcAoDGykeqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qNcOQiU5hubf2pSx4QqR2AVr0z0Sl78vjJIcFMhEWsY=;
 b=mgYJz+Hi1isMhPPCO+BM1vBoV/gHVpEVe7fdgeNzSM8VdIO1Lr74mmIPlI/PcuAQzoWsWlWYs+wc9Q2oaE89RayLdOWn/I7PSdU+KA0McclakIKYPwDVM0Dl683+gkI1rUEmTKA7KkbrPIlyuIxWtbZNMUvbHV6q9fPOWSbuiEuslIy5OUSfhZbDq4OlvXC4Xhje2+K4HncP/PNufMDBWduXNpm78QmKMR0Y1nsnhFxXEbXcMbvirx7wyD6y8xSRSLSpQAEzbDCrhqf/PdouQ2XFE3DQxr8fn6sDiPsEcTm14sAPNkZi7kxtl4zMHjCF6eE5IIfc+f9bNcYLAtX6hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qNcOQiU5hubf2pSx4QqR2AVr0z0Sl78vjJIcFMhEWsY=;
 b=RCcIuzI177Q5wbi+ODPELSp2PCIFtNHSLTcnq17lGGL8DFHBqh+TUomFZBQ2IEYXpcAB5GNoI0JvL7QTl3XnRCCHtnbMFiprJFRhMmJXhrhzK0ANDy/dLOypvKDBOZuiKjFsMhxw+ABAGHXh4OMubdEaBcVP65yvtqWbljaBjeXgTFUNZpTikbp3aapceALwCy/vMCwKFs7rKgEZfZUAw/KBZDlVlRwqjPeyoRg8IHY3rmiepLBsXccqLgcKb3lvisOq8FuAtb8CBxlEeZ2CQyEo+vhzBC+r+heKDj8FgH6cdgzfDmHzgFwAbeUovHFM4AKpFk7mqGXg1gyBpETVIQ==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by MN2PR12MB4335.namprd12.prod.outlook.com (2603:10b6:208:1d4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Wed, 22 Jan
 2025 14:37:45 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Wed, 22 Jan 2025
 14:37:45 +0000
Date: Wed, 22 Jan 2025 10:37:44 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250122143744.GF5556@nvidia.com>
References: <420bd2ea-d87c-4f01-883e-a7a5cf1635fe@amd.com>
 <Z4psR1qoNQUQf3Q2@phenom.ffwll.local>
 <c10ae58f-280c-4131-802f-d7f62595d013@amd.com>
 <20250120175901.GP5556@nvidia.com>
 <Z46a7y02ONFZrS8Y@phenom.ffwll.local>
 <20250120194804.GT5556@nvidia.com>
 <Z4_HNA4QQbIsK8D9@phenom.ffwll.local>
 <20250121173633.GU5556@nvidia.com>
 <Z5DQsyV0vwX3Iabu@phenom.ffwll.local>
 <6612c40d-4999-41a1-a4a5-74d3ff5875c3@amd.com>
Content-Disposition: inline
In-Reply-To: <6612c40d-4999-41a1-a4a5-74d3ff5875c3@amd.com>
X-ClientProxiedBy: BN9PR03CA0921.namprd03.prod.outlook.com
 (2603:10b6:408:107::26) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|MN2PR12MB4335:EE_
X-MS-Office365-Filtering-Correlation-Id: a652811b-5c28-4122-f992-08dd3af255cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VVhUS3lESmk3WnF6bjFyUXdtMkFMcHJUL3Q5N0xDNmpDaXU5WXM4by9DOFBw?=
 =?utf-8?B?Nnp5N3AvNUJUcEcwekxTcHNObXExN001OGx1Nm9GRnNLMDBFKytZVS91Y1Nz?=
 =?utf-8?B?cy9jK1U3aFlSTFVORnlxL1A1aUdvelNLZFN2S0MvbVM5THBrTjNQc0Vibmd4?=
 =?utf-8?B?dUQxZVhuRWt3bnl6Z0pkRXFta1k5WjJ6akIwM2Q4c1FIbkJDUmRSWGlreld3?=
 =?utf-8?B?VjJJc1FSemZRQUgvZEpueEdDQi9kWkV1RE1uV3NLUzNrbjZ3Z09JYjYrdVNm?=
 =?utf-8?B?ZXpTUG1JN3pzaWZ6RVNYb1E5WW9yYnJkZGFsWGpoV2pqYng1blJCM3hBMXIx?=
 =?utf-8?B?U29QWEYyOFcwVk5SUGw5TFdENzF3Y3dqMDJITnQxU1lqWk8xTnpoRjREZUlh?=
 =?utf-8?B?OEgvWUxycnNscEdjekhkV0xIdVpHNElBY1pYTHN0NEtMRDlWREZTNklnUEx5?=
 =?utf-8?B?VXprZVlxd2VVc21qck4xRDRxQ1llRXNTTklGcy9SK1hpbGZ6M1haZWxQYVM3?=
 =?utf-8?B?bDFYeTd6cXFYS0xTa1g1NytWMk9QcFdmWmdvRThubjdyVjRGVS9sZkFTaDlT?=
 =?utf-8?B?UlU1SGhzRlVrbkZpRzdrWWJ1eDZ6eVBIOHV2ZVhOSzhJZFcxelRwQWNLSE1I?=
 =?utf-8?B?bjF6dWJ0KzZvcTRPNWJMRUN4VitlcTdtNU8xWDlLMWNJSEYvNmtuK3dTMTNo?=
 =?utf-8?B?WUl0ZVRhVno2cXpYNVAvbHl4UU4yVllVY29YaWt2WW12SHdCRmlVaFJqRHdx?=
 =?utf-8?B?dUtkSytkcjVINEN3VUQ2YVlMZzF3eTh5SHBUSHY1RXB1MlVuVGJvcUFVT3FK?=
 =?utf-8?B?dWxvYVE2S2xETW1vOFN1Mm1US2c4SUVBQlQ0dCtiQ1J5dEZUWDhFR2RZTjFr?=
 =?utf-8?B?YWlnN1lxVCtkNk9VNVdINVJKVmJSaUxtRThYYUxMYXFiYURiWnIrNFBEazJJ?=
 =?utf-8?B?RTFPWDRhanBSMGpraE5sVmtaK0pudUE5L1llcldBZHdQdkJxVzVlQkdvYzds?=
 =?utf-8?B?enFXcW5UNks2Z2R2TExrTzlOSWJUZWZYUHdubUMwcUpNRkVIRm52MEd0TTlE?=
 =?utf-8?B?QjBGTUpJU2dmQXFPZUFnUzJXOHVtWXZZQndhSWtpbVF3WUZiSmp5WGxIOU5D?=
 =?utf-8?B?SGJJQzR2RTNldHg1THRFbkQzb1htZ2F0c1Z1MjVwbVNHM0NmUHBwLzFMZGV2?=
 =?utf-8?B?TE1QTTkwV0U3aC96bHovWmVDbnBYazl1MWc4U0pGWFpHSElrR3V4OWFhbEh4?=
 =?utf-8?B?Y3lVU2Z2dWpOd3A2TnNGV3Z0MlY0NWxQUHhpT0JscWRjZUNpaDJhdm1UajF1?=
 =?utf-8?B?UFhvbTJKVnJ1emJmL3d5d1FJSFpGUHp6d2M2Q1pxVjd4Q21OVUc2ZUtiamFy?=
 =?utf-8?B?K2hraFh1NHVlZjFQcWNlazY3WE5Yd0NmR0krQjRSbjU4ckp5WVZCVWdURE8z?=
 =?utf-8?B?QU5WcjQwVHRPemlnbkFWTmxNc280dXRtRU1FQ3UySzlZaXUzb3NtZUVJTm8w?=
 =?utf-8?B?cjhoRG90czhTdzFWSUpwQlpWTXJsOHN3WURHZURLWFZHdUxIMW9MemgvaklL?=
 =?utf-8?B?T01qempqSmVhY0pqN2JGRnFjdG10Y29oSjM3czB3aksxOEQ0akdoNDdQZE9P?=
 =?utf-8?B?RmtUREcvUFRVdUIvK0hjR0Vud2Rjclg3dzM3WFZkM2NITXZkTXpBdXA3MWlS?=
 =?utf-8?B?WEM3bDQ0eGpDUEM1Nk5CQWt3K3pHbysyM1dmelk1bWNkSkRFSnp5elE0OG9s?=
 =?utf-8?B?RW5pdVNCRExEVlowWDZkR2hWZ3dvREJIYS8zVFFLYVdSemtEWmlaK0FCYVpZ?=
 =?utf-8?B?Si9ONmV2RjBxMmdSV085Q3lnb0pnYXI4VE4vb1c1QXpLSkhxRDRCTUpwRmtZ?=
 =?utf-8?Q?OhI7H/a63KI+c?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QUdtWmFIM2VLWUhPWmc0TGJxUHFCd3ZLRGYzc0ZldFRjRXdIQUpXVmJHd3BO?=
 =?utf-8?B?c3FqdGttL0psSThCcFJmN1EydHFRM0J3b3pMdnlST2NGdjAxYU05eGlnSk40?=
 =?utf-8?B?MkloTjJMNkpDMEV2Um55dllyYXQxUkI0SkxYdGozNmRhMXNDcjdFR1dxVjdI?=
 =?utf-8?B?Y3IrYmlnUGhwZEd6dkZzemluN1YzUHg1UWErcGdaRzhvY1JIZTZFMjZBbjhw?=
 =?utf-8?B?azdrUWNjUlAydWZrZjR4dWxxZjdYenVOVll0bzBZNmQ1VHUycTJuTkNOSmdE?=
 =?utf-8?B?MXRUbEVlTkZsblhkTXRzUEx3eUpSMEtmdjJzdUJxSTloNGZBSklKTDZvMTd3?=
 =?utf-8?B?ZW1KOTh5clErUFY0TDFFbGtad1I5WnlwaFB2OGFnTUZFTDV2WWxsSm8yUVpa?=
 =?utf-8?B?OG13SEFxN05RTHBWU0djWE4zL3pKcEdIMVAyOHBaT0JZcXZZblluajZkbklq?=
 =?utf-8?B?eElBWHVlV05VR0NFWWh1SCtaT0RsRjFJeklaVzY5enlvV0xWcElaa1F1bEk4?=
 =?utf-8?B?WmlQYnhNYWVsbENiaDNNajh5WGxuU2tUTTJtZDVMOXh6WW92QzgvZmpCTmFr?=
 =?utf-8?B?d21QUWduZFFBKzdYelRrMnE3RFZOdUNXdVFnbDJwN1JyTGVDOXRMaUx0WFJy?=
 =?utf-8?B?SzFvZ09qbzYwaTRsOTBUdmZ6c2xPWVl1UEdsb1FEK0M4MlBtVm5MQW5xMWdq?=
 =?utf-8?B?ZWRoOUlOUU52eTd3M3BTenhJbTBJQkZYYWFsbVIxZTJsSnlEV0VvK0h3SnMx?=
 =?utf-8?B?RWRsVkQ4WHJ2VG5zc2hZTUVLcUVGd2Iza05KVGVGZzVlaUxjRnhiS1lxRVpP?=
 =?utf-8?B?NDlxQkFJMWU3d0RaN0pEaG9KL0FvUzl0Uyt4NURqN2lTL0xkQ29qUWR4U1FM?=
 =?utf-8?B?KzVuSHYvMzFFK21sR1JPbllkVmc1MUZnd1oxTVhZbFdRRXNmdTd1WUpsUmdV?=
 =?utf-8?B?akJlVFQwdHU3WFp6U2lZZUJSamZ4OFFwbmlzenpuYlNNdGNzQVRVUEQ3Z1l6?=
 =?utf-8?B?YnJvWGFodzI4c0FnWUg2OTVmNHY3M0RUNU9kd2k1YTdnejEybmdFSGVGbjlC?=
 =?utf-8?B?UVhFbzRvbjJWazEzeVBXOFJtMUNrdVRuTDdTZ25XNGpMMUtFVXF0QlpKaWYy?=
 =?utf-8?B?ZzIxdWl4K0g1dDRYcldxUmFiYzdyWkpzQ0tEWEhHZ2xBaElURVFGQ0t0UVZD?=
 =?utf-8?B?SDVSUzJlb2MwdmtYWHRENjF2TlAxbGRlVkRIbmU0eC9oeGZpRmVONCtqREF5?=
 =?utf-8?B?TU5FU00ybDZ4Qk1lRFBqTE9YSHc4UjBnRVY2eFpVREI5VnczajBueGNkUGlH?=
 =?utf-8?B?blJ1eVlXWFJlQ2hPUnozanlNRS9PTzBkc25OcW15cGtaMmNPM2JwS1lETUtm?=
 =?utf-8?B?VW5KRVAreEVvV0tucmxwSks1ZFlHa0lTWjI0Sk9lVWdJYXc4RTExUmVsMm5o?=
 =?utf-8?B?M0xiQ1NvRkFoYjdBVWpQa0gwUCtxL01GTUY3SHBrd2RYa2NVcyt0VUlWN0Z6?=
 =?utf-8?B?NUhhU2Y4ajNxMDBGOEgvbS85SGptRCtvalhWQThOMklBNXZYKytVaEdOTktq?=
 =?utf-8?B?cjBtbHVoTnU5Mkk3MkZEellxTXZUK2kyK0JzSjUzM0xTdHdEYkl5RnoydE5x?=
 =?utf-8?B?cnZleXlVWWpNZVhmamh0Wmlvbzg1dU0xSDBDcXJESk9HTS9xdHd4c2JhSGVH?=
 =?utf-8?B?V0FFSGluSnlxY3Izc0NDNDVxT0I3K0FCU01kZkljTW5ncTNFV2trc0VUSktO?=
 =?utf-8?B?aDcyNEpHdHROQnZDbXQrUFQ3dXRMMnBJdTR1WDR0eU01b2JYQlFXc3VYa05m?=
 =?utf-8?B?dDN0WmVEd1VJKzZsbGZiUzF6UFRDR3hLcHozM3hkVUpLc3pwelozOGtvYWpG?=
 =?utf-8?B?WnNNY01uaVpsVjdYRThFZFYvbk1kR1RBRUpybCt2c1ZyQXRiZytvZmZsbmgv?=
 =?utf-8?B?amt6Y25zbW1Ya3NRdzdaNlhzV3hXMENaN1JNd2VqMjFncFIxYlFVR2JGdi9V?=
 =?utf-8?B?NnNIZTNnQVFiVEtFdEs5S0ZzYUlTdEM3WFY1YkFLUkpNMVNPWHF1bEd4MWwz?=
 =?utf-8?B?eURRSGEvSHdDQXNIQzZ1VVFhdVMvYjBtYkhGaFNobEF5WWdvQjBleVJBUkc3?=
 =?utf-8?Q?f861oBX3u3n0UiWajov2zSNl7?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a652811b-5c28-4122-f992-08dd3af255cc
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 14:37:45.4412
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JpHm/HqXFq29mLRgibsjUiYc0s4BW3JdUbrD+brGfoyCNQaZc4fj/jjeuHabyKk+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4335
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 488BC40D2B
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.94.76:from];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.76:from];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	URIBL_BLOCKED(0.00)[NAM10-MW2-obe.outbound.protection.outlook.com:helo,Nvidia.com:dkim,nvidia.com:mid];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: ED3SUTIOJDRMINPBOTJTIB5UROEKM4ZS
X-Message-ID-Hash: ED3SUTIOJDRMINPBOTJTIB5UROEKM4ZS
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ED3SUTIOJDRMINPBOTJTIB5UROEKM4ZS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMjIsIDIwMjUgYXQgMDI6Mjk6MDlQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBJJ20gaGF2aW5nIGFsbCBraW5kIG9mIGZ1bm55IHBoZW5vbWVuYSB3aXRo
IEFNRHMgbWFpbCBzZXJ2ZXJzIHNpbmNlIGNvbWluZw0KPiBiYWNrIGZyb20geG1hcyB2YWNhdGlv
bi4NCg0KOigNCg0KQSBmZXcgeWVhcnMgYmFjayBvdXIgSVQgZnVsbHkgbWlncmF0ZWQgb3VyIGVt
YWlsIHRvIGludG8gT2ZmaWNlIDM2NQ0KY2xvdWQgYW5kIGdhdmUgdXAgYWxsIHRoZSBjcmF6eSBo
YWxmIG9uLXByZW0gc3R1ZmYgdGhleSB3ZXJlDQpkb2luZy4gVGhlIG1haWwgc3RhcnRlZCB3b3Jr
aW5nIGZ1bGx5IHBlcmZlY3RseSBhZnRlciB0aGF0LCBhcyBsb25nIGFzDQp5b3UgdXNlIE1TJ3Mg
c2VydmVycyBkaXJlY3RseSA6XA0KDQo+IEJ1dCB5b3UgZG9uJ3Qgd2FudCB0byBoYW5kbGUgbW1h
cCgpIG9uIHlvdXIgb3duLCB5b3UgYmFzaWNhbGx5IGRvbid0IHdhbnQgdG8NCj4gaGF2ZSBhIFZN
QSBmb3IgdGhpcyBzdHVmZiBhdCBhbGwsIGNvcnJlY3Q/DQoNClJpZ2h0LCB3ZSBoYXZlIG5vIGlu
dGVyZXN0IGluIG1tYXAsIFZNQXMgb3Igc3RydWN0IHBhZ2UgaW4NCnJkbWEva3ZtL2lvbW11Lg0K
IA0KPiA+ID4gTXkgbWFpbiBpbnRlcmVzdCBoYXMgYmVlbiB3aGF0IGRhdGEgc3RydWN0dXJlIGlz
IHByb2R1Y2VkIGluIHRoZQ0KPiA+ID4gYXR0YWNoIEFQSXMuDQo+ID4gPiANCj4gPiA+IEVnIHRv
ZGF5IHdlIGhhdmUgYSBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50IHRoYXQgcmV0dXJucyBhIHNn
X3RhYmxlLg0KPiA+ID4gDQo+ID4gPiBJJ20gZXhwZWN0aW5nIHNvbWUga2luZCBvZiBuZXcgZGF0
YSBzdHJ1Y3R1cmUsIGxldHMgY2FsbCBpdCAicGh5c2ljYWwNCj4gPiA+IGxpc3QiIHRoYXQgaXMg
c29tZSBlZmZpY2llbnQgY29kaW5nIG9mIG1ldGEvYWRkci9sZW4gdHVwbGVzIHRoYXQgd29ya3MN
Cj4gPiA+IHdlbGwgd2l0aCB0aGUgbmV3IERNQSBBUEkuIE1hdHRoZXcgaGFzIGJlZW4gY2FsbGlu
ZyB0aGlzIHRoaW5nIHBoeXIuLg0KPiANCj4gSSB3b3VsZCBub3QgdXNlIGEgZGF0YSBzdHJ1Y3R1
cmUgYXQgYWxsLiBJbnN0ZWFkIHdlIHNob3VsZCBoYXZlIHNvbWV0aGluZw0KPiBsaWtlIGFuIGl0
ZXJhdG9yL2N1cnNvciBiYXNlZCBhcHByb2FjaCBzaW1pbGFyIHRvIHdoYXQgdGhlIG5ldyBETUEg
QVBJIGlzDQo+IGRvaW5nLg0KDQpJJ20gY2VydGFpbmx5IG9wZW4gdG8gdGhpcyBpZGVhLiBUaGVy
ZSBtYXkgYmUgc29tZSB0ZWNobmljYWwNCmNoYWxsZW5nZXMsIGl0IGlzIGEgYmlnIGNoYW5nZSBm
cm9tIHNjYXR0ZXJsaXN0IHRvZGF5LCBhbmQNCmZ1bmN0aW9uLXBvaW50ZXItcGVyLXBhZ2Ugc291
bmRzIGxpa2UgYmFkIHBlcmZvcm1hbmNlIGlmIHRoZXJlIGFyZQ0KYWxvdCBvZiBwYWdlcy4uDQoN
ClJETUEgd291bGQgcHJvYmFibHkgaGF2ZSB0byBzdHVmZiB0aGlzIGltbWVkaWF0ZWx5IGludG8g
c29tZXRoaW5nIGxpa2UNCmEgcGh5ciBhbnlob3cgYmVjYXVzZSBpdCBuZWVkcyB0byBmdWxseSBl
eHRlbnQgdGhlIHRoaW5nIGJlaW5nIG1hcHBlZA0KdG8gZmlndXJlIG91dCB3aGF0IHRoZSBIVyBw
YWdlIHNpemUgYW5kIGdlb21ldHJ5IHNob3VsZCBiZSAtIHRoYXQNCndvdWxkIGJlIHRyaXZpYWwg
dGhvdWdoLCBhbmQgYSBSRE1BIHByb2JsZW0uDQoNCj4gPiA+IE5vdywgaWYgeW91IGFyZSBhc2tp
bmcgaWYgdGhlIGN1cnJlbnQgZG1hYnVmIG1tYXAgY2FsbGJhY2sgY2FuIGJlDQo+ID4gPiBpbXBy
b3ZlZCB3aXRoIHRoZSBhYm92ZT8gTWF5YmU/IHBoeXIgc2hvdWxkIGhhdmUgdGhlIG5lY2Nlc3Nh
cnkNCj4gPiA+IGluZm9ybWF0aW9uIGluc2lkZSBpdCB0byBwb3B1bGF0ZSBhIFZNQSAtIGV2ZW50
dWFsbHkgZXZlbiBmdWxseQ0KPiA+ID4gY29ycmVjdGx5IHdpdGggYWxsIHRoZSByaWdodCBjYWNo
YWJsZS9lbmNyeXB0ZWQvZm9yYmlkZGVuL2V0YyBmbGFncy4NCj4gDQo+IFRoYXQgd29uJ3Qgd29y
ayBsaWtlIHRoaXMuDQoNCk5vdGUgSSBzYWlkICJwb3B1bGF0ZSBhIFZNQSIsIGllIGEgaGVscGVy
IHRvIGJ1aWxkIHRoZSBWTUEgUFRFcyBvbmx5Lg0KDQo+IFNlZSB0aGUgZXhwb3J0ZXIgbmVlZHMg
dG8gYmUgaW5mb3JtZWQgYWJvdXQgcGFnZSBmYXVsdHMgb24gdGhlIFZNQSB0bw0KPiBldmVudHVh
bGx5IHdhaXQgZm9yIG9wZXJhdGlvbnMgdG8gZW5kIGFuZCBzeW5jIGNhY2hlcy4NCg0KQWxsIG9m
IHRoaXMgd291bGQgc3RpbGwgaGF2ZSB0byBiZSBwcm92aWRlZCBvdXRzaWRlIGluIHRoZSBzYW1l
IHdheSBhcw0KdG9kYXkuDQoNCj4gRm9yIGV4YW1wbGUgd2UgaGF2ZSBjYXNlcyB3aXRoIG11bHRp
cGxlIGRldmljZXMgYXJlIGluIHRoZSBzYW1lIElPTU1VIGRvbWFpbg0KPiBhbmQgcmUtdXNpbmcg
dGhlaXIgRE1BIGFkZHJlc3MgbWFwcGluZ3MuDQoNCklNSE8gdGhpcyBpcyBqdXN0IGFub3RoZXIg
Zmxhdm91ciBvZiAicHJpdmF0ZSIgYWRkcmVzcyBmbG93IGJldHdlZW4NCnR3byBjb29wZXJhdGlu
ZyBkcml2ZXJzLg0KDQpJdCBpcyBub3QgYSAiZG1hIGFkZHJlc3MiIGluIHRoZSBzZW5zZSBvZiBh
IGRtYV9hZGRyX3QgdGhhdCB3YXMgb3V0cHV0DQpmcm9tIHRoZSBETUEgQVBJLiBJIHRoaW5rIHRo
YXQgc3VidGxlIGRpc3RpbmN0aW9uIGlzIHZlcnkNCmltcG9ydGFudC4gV2hlbiBJIHNheSBwZm4v
ZG1hIGFkZHJlc3MgSSdtIHJlYWxseSBvbmx5IHRhbGtpbmcgYWJvdXQNCnN0YW5kYXJkIERNQSBB
UEkgZmxvd3MsIHVzZWQgYnkgZ2VuZXJpYyBkcml2ZXJzLg0KDQpJTUhPLCBETUFCVUYgbmVlZHMg
YSBwcml2YXRlIGFkZHJlc3MgImVzY2FwZSBoYXRjaCIsIGFuZCBjb29wZXJhdGluZw0KZHJpdmVy
cyBzaG91bGQgZG8gd2hhdGV2ZXIgdGhleSB3YW50IHdoZW4gdXNpbmcgdGhhdCBmbG93LiBUaGUg
YWRkcmVzcw0KaXMgKmZ1bGx5IHByaXZhdGUqLCBzbyB0aGUgY28tb3BlcmF0aW5nIGRyaXZlcnMg
Y2FuIGRvIHdoYXRldmVyIHRoZXkNCndhbnQuIGlvbW11X21hcCBpbiBleHBvcnRlciBhbmQgcGFz
cyBhbiBJT1ZBPyBGaW5lISBwYXNzIGEgUEZOIGFuZA0KaW9tbXVfbWFwIGluIHRoZSBpbXBvcnRl
cj8gQWxzbyBmaW5lISBQcml2YXRlIGlzIHByaXZhdGUuDQoNCj4gPiBCdXQgaW4gdGhlb3J5IGl0
IHNob3VsZCBiZSBwb3NzaWJsZSB0byB1c2UgcGh5ciBldmVyeXdoZXJlIGV2ZW50dWFsbHksIGFz
DQo+ID4gbG9uZyBhcyB0aGVyZSdzIG5vIG9idmlvdXNseSBhcGktcnVsZXMtYnJlYWtpbmcgd2F5
IHRvIGdvIGZyb20gYSBwaHlyIGJhY2sgdG8NCj4gPiBhIHN0cnVjdCBwYWdlIGV2ZW4gd2hlbiB0
aGF0IGV4aXN0cy4NCj4gDQo+IEkgd291bGQgcmF0aGVyIHNheSB3ZSBzaG91bGQgc3RpY2sgdG8g
RE1BIGFkZHJlc3NlcyBhcyBtdWNoIGFzIHBvc3NpYmxlLg0KDQpJIHJlbWFpbiBza2VwdGljYWwg
b2YgdGhpcy4uIEFzaWRlIGZyb20gYWxsIHRoZSB0ZWNobmljYWwgcmVhc29ucyBJDQphbHJlYWR5
IG91dGxpbmVkLi4NCg0KSSB0aGluayBpdCBpcyB0b28gbXVjaCB3b3JrIHRvIGhhdmUgdGhlIGV4
cG9ydGVycyBjb25kaXRpb25hbGx5IGJ1aWxkDQphbGwgc29ydHMgb2YgZGlmZmVyZW50IHJlcHJl
c2VudGF0aW9ucyBvZiB0aGUgc2FtZSB0aGluZyBkZXBlbmRpbmcgb24NCnRoZSBpbXBvcnRlci4g
TGlrZSBoYXZpbmcgYWxvdCBvZiBEUk0gZHJpdmVycyBnZW5lcmF0ZSBib3RoIGEgUEZOIGFuZA0K
RE1BIG1hcHBlZCBsaXN0IGluIHRoZWlyIGV4cG9ydCBjb2RlIGRvZXNuJ3Qgc291bmQgdmVyeSBh
cHBlYWxpbmcgdG8NCm1lIGF0IGFsbC4NCg0KSXQgbWFrZXMgc2Vuc2UgdGhhdCBhIGRyaXZlciB3
b3VsZCBiZSBhYmxlIHRvIGNvbmRpdGlvbmFsbHkgZ2VuZXJhdGUNCnByaXZhdGUgYW5kIGdlbmVy
aWMgYmFzZWQgb24gbmVnb3RpYXRpb24sIGJ1dCBJTUhPLCBub3QgbW9yZSB0aGFuIG9uZQ0KZmxh
dm91ciBvZiBnZW5lcmljLi4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

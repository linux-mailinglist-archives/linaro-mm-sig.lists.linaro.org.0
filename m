Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF21A6EBFA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Mar 2025 09:54:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9ACA44973
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Mar 2025 08:54:02 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2051.outbound.protection.outlook.com [40.107.237.51])
	by lists.linaro.org (Postfix) with ESMTPS id 0D7383F328
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Mar 2025 08:53:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=a8AXfXwq;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FkklFw8kNVrJdasNCZsQ2n/fNHKDD2EyRd7cpaKpD61Kr/gLgKzgxcTf7M7qvEhQ6kg6e8NQn5YwrYCvw9+geHuJAHPtqmwsfDl/+XRGXfrPWwaqlYQFNk6V9lSelaaEoatd5xWXFKptoyhLXg/RKFyMQMfRLGNMfnrMc+Y7CZkFADtVd5ZFHNK0z8pIac01k0xTTcTmogBrldfefhJ/rQlbefoZF7m4RwNDayTl542w3sqOSOrZPD7VTUmo1uJDZWk0uY/qlONgtux3JiqgF2zcHeVQlXiR4sx3jK3kaI1pdZxfJThEpRyr/x47vjNOGS0tabh7KqVayUjWUiPPrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVGhXo/B9a/d4bF9177Xo6kxwPvCE+f160IrQJPXnV0=;
 b=hOT/z07p2iXcuL/tY/NBEyRIgExI4yzgLwng0+Rg77w2WButvIfR9fBZQ6Za0jWekBbakQOkkgNjUjTC7nMOJ7mfSdw+zAnota8OCYCzTfC9Nv/YZE+bGMJsq3VQfm8Y95/Q7/+DsvZKl7d/PnHlnO3zQQW0YwGPv2Njue3L2Rjfn/nOvy9/74xMm6l7N0AoRM00rpO4rvOl4egmY5JOYBHlwHfcfKR01Hzi1dMgfKNAwCC43Vny2nSQRhD3X56etcSVe1YG9CvyPTjJsH+NxeYpxvds9zRiTPYlueqwRjaOAripIK+hsrmnR96Vh3EsowePCwcWDaq8u7nSDJtKaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aVGhXo/B9a/d4bF9177Xo6kxwPvCE+f160IrQJPXnV0=;
 b=a8AXfXwqrv0rsI9uvkRNhSpL9eCL+uc3BITVYY39niWslEVBXyfm531hTpL5WFb7XlXNuf3G6r62cQsBdDHblV6ERSUqNy7mhEaSyQa8iNPtUjPwmjuXzJupIhMeSy+rNk9oFzNB0mirkV9Zc4eZ74YU0jU8Qgx0tLhNIw3OjF0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB5840.namprd12.prod.outlook.com (2603:10b6:8:7b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Tue, 25 Mar
 2025 08:53:47 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8511.026; Tue, 25 Mar 2025
 08:53:46 +0000
Message-ID: <099dbff3-42fb-4445-b5a0-1c4031bb9e7c@amd.com>
Date: Tue, 25 Mar 2025 09:53:41 +0100
User-Agent: Mozilla Thunderbird
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>,
 "Xiaogang.Chen" <xiaogang.chen@amd.com>,
 "kraxel@redhat.com" <kraxel@redhat.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
References: <20250321164126.329638-1-xiaogang.chen@amd.com>
 <555feb70-5d80-4a36-818f-f00fbc3dff23@amd.com>
 <IA0PR11MB718563F5C571E07F1314F152F8A72@IA0PR11MB7185.namprd11.prod.outlook.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <IA0PR11MB718563F5C571E07F1314F152F8A72@IA0PR11MB7185.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR5P281CA0054.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f0::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB5840:EE_
X-MS-Office365-Filtering-Correlation-Id: f7d5acd7-6a02-4843-0422-08dd6b7a8db0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MzdqTXFaQ2lZUnhzTnFaM0wyeERnbytKSVdJNGpEVkJ2TjFrTWdaYjQ4ZWFl?=
 =?utf-8?B?WmJyMkZhZFlkcysxbHd3bW9NSkNURTZMZFlTc0pqVE1LOU9CSVZrbldYTVBL?=
 =?utf-8?B?dERONDlQejNZbEhpbERzZGRjN3hFR2d5c3BTUGJlcG5JbjJWK3RzcXFrS2lN?=
 =?utf-8?B?dU40M1ZCL1VBSVBsdkJqZEpCRjJMaW9EbHBzbStaOC8waWpZZE5YaWZMZlpS?=
 =?utf-8?B?OGw4RVk2WkoyREtDa25UOG8wZjUrM2c2UU1mRUp4Tmx4ODVsMXM1bmhVTHkr?=
 =?utf-8?B?THk4Tm5yQWptYU5vZGVudTU3OC9xSFhjbklJWGJzbkNYMUsvcmZBc3ErUXFW?=
 =?utf-8?B?OXo3bk1SaFVtQmtKcEFleU91YXl2cmhFdlhYaHo5WVRPSVpJV2h5S1FlWVc0?=
 =?utf-8?B?aWJDRGRPVUJveExvazZRa3I5Z3d4YzVTUDFZYXA5T3huMFZzUWdKU0trNjB5?=
 =?utf-8?B?N0Z1OENueXl3U1hocGorY21WdXIyd0wxa2NlNTdSakZ2SWZ0cGVJNmFHeFg2?=
 =?utf-8?B?emFFTEdFVXY2dFRTUXcvZGUxNkQ3bm1MV3FNUTFtcUpERHdLemZWSjVwL3Fu?=
 =?utf-8?B?UGMrdDFmYlp0N1g3ajR5TkJndDJmWDd2OTNBeEJNMzQ0TWRMcDNIRjBxb2Zq?=
 =?utf-8?B?Z201ZXJGZHBXaHhTYWsvV0JFSlpKbkozTWRTZFpmVmovczd2cGdtQm90TjZT?=
 =?utf-8?B?UE9CS3dtYU5GS2F1a2ZCaWlDbEpuekVGZktLeFpSUlgzRnpPQXlPYU4rdFRH?=
 =?utf-8?B?V3d5MHMzakZ1cENhQXJSZ0t6L2RZR3lqTFNBNTUyaC8zaUJFT2I0OG1ka3dK?=
 =?utf-8?B?QXpjL1RlMkxTaGo4eUgxaTI4V0ZGQnRzQkJ1Z0tpeHB1bUNOd3VtcHRhV0w3?=
 =?utf-8?B?TlBCRWF0NHBVSmplazlsYjFGZElXUjNKc3FXamtQd1pEY2p5b3didUdiSXRY?=
 =?utf-8?B?R091UHdsZnNBUDBWRkVwUFU3QlVDeFc0OGJLR3ZZS0NiZFVkdnNWZzBrcmE1?=
 =?utf-8?B?eFBsMlVUejR4NzdKSnMwTlhheEh2clRDcGRyaElXNkJQblhEMGRnRTBlTmJ3?=
 =?utf-8?B?b2tJQWFqcGVicEMxbm1KbXZWTnJQMDBLZ0J5dWFBUUhuYnRWQ1pwdHJkOXVi?=
 =?utf-8?B?WHNnT2gvbmw4QkNValFtbG1JVmt3MGdaSXBQaW1YYU5qYVJjdlJiS1RjMURx?=
 =?utf-8?B?NXlWZXdoZGgxWU9ra3hQd0FVeXJhSE5jTUUxc3RHdkJCdGNmaGFQbDkvSFAx?=
 =?utf-8?B?b2g1VHNzK1ZoSGk2SWhNRHpMRUREcUlvNktzTkQwU0p2SmFJRGZhdXU2TFJk?=
 =?utf-8?B?VUxvOWFBOUNyb0FOaFhGcmhFWG1uVkRPNGxQbS9GZFp1NzhOalhFRElrQ3F1?=
 =?utf-8?B?V0YyZnQ5TTlxb0h4TWpsbHp3UGZoZStxbFh0cTNta0NLd0VLazB4NWhYd0U1?=
 =?utf-8?B?WjZ2eG5wK090UnkzaGJvVlZYUU03dkJQSTE5TWZMbitrZnV4Wi9hcURZQ3hG?=
 =?utf-8?B?UndYUzhBNktaMmpQdW81c2ZvUjJUZmhreUVtYkt2UWRsak00Z1dXaWZsb1Fv?=
 =?utf-8?B?dlNLTUM0M2xqUkFsUjRDelV4NnNCWlF2QUovWFpwSXFIeTJnQVZ5eTQ2c0Fa?=
 =?utf-8?B?SUJQVE9Kc2hOQW81YkdMbWNmcjF2QlMwaW1iZUoxdTYwTGRJZ3Q1WmpPK3RI?=
 =?utf-8?B?NGRGdFNXMURHSUszY2pWdzVRNTZ2WjBDVTR6UUZ5aXRzUllEYlVETXFrQXRP?=
 =?utf-8?B?dVoyTXRBQXQ2TXpETzBZSmp3Nnd4ZHZqbUNuY1BxYUZ4QlF6Sm5VMHpTMkNl?=
 =?utf-8?B?b1pVVTBlaitEbTE2MnI1Q1V0aDhIYWlCQ1NFNTI3V2tFcEx0MlFwM0lJRFhZ?=
 =?utf-8?Q?KXXMQDq/Hc2Gn?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TllUaDN2Z0VNYUd6dW5KVE9lTWg3NTA5YVRKbjRXbnU3NWVTc2J4bkVPd2h5?=
 =?utf-8?B?NUt6amY3aEM4b2tQaFZLMHY5aE9MdW1ZN2VsdU5PTUl4ZWl5YVQzV0M1bEVz?=
 =?utf-8?B?K3NzS0twTzgvYmtUVG0zNmZ4TlgxRlBoTlh5N0ZHalpZRURCZHh4a29BOWt1?=
 =?utf-8?B?VVRDUWRaZy82UzZZckZwY2RZNFErbnV0VEFOTndjT2xUaHM1NUkrZzRsZnhN?=
 =?utf-8?B?M3N6ZVRadlZ4Wnc4T2pFbDZaUzkxam9Za0s4cmNRbmg1enBSOXl2enVLenhZ?=
 =?utf-8?B?V1pJeWVnbXd5ZWZqMTV1a3JQblNmQUxObi9BUWlrYWNONGdQQU83dDlkbFF4?=
 =?utf-8?B?SzFNMC96U2Q0NklsdmdQemlwVjRJU3JUM1ZOekgwcy9VWXU2ZXFObWhrYStn?=
 =?utf-8?B?SlVCaFRGM1F2aHlEa1MveUpOQzJtenczZTdsQUZhZGF5ZlJ2WWxTeXdXYXh1?=
 =?utf-8?B?VFJUaUpSTUZtekp2VytONEhXL0Y1RFpSTVlRT0dNNXhhaTdPajhpSzhBM1lh?=
 =?utf-8?B?OUZFZE1xMkNnZi9JZ09KR3VEUjQ4SXkvWDNSN05sb0RpRkVsaURVanB5QTNh?=
 =?utf-8?B?Y2FMMmZxaDl4NkpkTzhXd2kzdS9MdWtBemhEZ29UOStiUTVjY3RBeWphOXIv?=
 =?utf-8?B?LzZEakU1UnMwK1l4WHEwR1g0STduazBoNEw2M0luTUxmTkpUNlBteHRpbVZ1?=
 =?utf-8?B?QU9MTkhxVy9ZN2x2YkhXaEpwN0V4Ukp0emtvU3RQSUx2K1VuQXA0dTVXR2lk?=
 =?utf-8?B?b0NPSGJGMjVoUER6ejR5YzZmQWlTZDRkUnFIUFlPMjQ3VW1TcE8wWU5xdEZO?=
 =?utf-8?B?RjZ4a3RaUTEzWnlXZ3FLbXJUQjczUXFtczF4OVF6MkpLNHd6S1k2cTVsTktx?=
 =?utf-8?B?NXQwVElzRll0dXZncXFYSGRkRXJlZDlOTVk1M0ZUcmxzSHUrcTR3WTFTejJp?=
 =?utf-8?B?NmdYQ0hFOUFZTnQ2YlExTnFHc2NQeTRrdS9MbmswZWVkbnEzazdUVW5EYjdP?=
 =?utf-8?B?WUx5R0x3eVZKTnhYd254TE16cHphOFFyNUlJYlBmaUdVbk9kaUI3Tk8zUVdB?=
 =?utf-8?B?OTlUaytMV3c4YUM1R0pZSlZiYzVzQnQ2TWkxTlQ5SVl0eXZENjJHTVNSUzVX?=
 =?utf-8?B?eXllbWE1REYyZlk0dkd4b0lpMHBJVkhTYUEzWFJBZEFSQUhlcmV0NS9Ra0wx?=
 =?utf-8?B?SmVmVnlUWDRHcE1PWU9ET3hGOUdCaUVDU3I0ekwvdHF6d1F1WVVUVnM1Y0w4?=
 =?utf-8?B?VklSLy9NcExqWnNQSm9iK0RhSGw5bVRaRFlBbWF0UTYwZGtxaVR3OXVhMDRH?=
 =?utf-8?B?Z1FXYlhOZzhHWEZaSlRQYnNOQjBsT1VrMlZNWmYxNGFhQjRFN3lPUEgzZENI?=
 =?utf-8?B?YXppRTVqazJCWXVEbThXZk5NMGlkNHoxU2JBblg1anE1ZTFQcWZPbjZXK0NV?=
 =?utf-8?B?WkgxdjI2ZnlCWFQxdkxNblFrYUd2a0dWYkdEc0d3QnB3ZC9ISzFHMndXNFhn?=
 =?utf-8?B?WTEvUzNXRlRDelY5QXI3TTYwTC9VYS9BT1JBbmIvVG1BRGxWV2RINlJ0SzlN?=
 =?utf-8?B?WFRxeFNVZUp3NDNIaFFrWHh3dXl3OUpFcjNvRDUzN01KR25FR2Vsdi9welV5?=
 =?utf-8?B?cE0ra1BEU2w5ZEc3UXJ5ZmYweks0WWw5dHFGeXEvRFRWeXdkdmlWalNYQzBk?=
 =?utf-8?B?MEZBbDV1UzFNM09oUEt1YWZxcXRkWktOWVcybjlXY0h5WDRmS1BJZlBSbytP?=
 =?utf-8?B?TTAyRGh2R25JV1hnME9yaUJxNm8vcTZQMEU0b2tpaFY5Mi90b0JhVXMxUUs0?=
 =?utf-8?B?eXZxRFRNZTh6RmdsemprTUwrZjl0Q2R3NUhsN040UnQ2RDBJM29sbHp3Y096?=
 =?utf-8?B?aDZ3M21UYkNQb0pwT3lVWHZEVjF5dVFYNG9iQ0taeE5jVmh0TVNTMTlwVWhN?=
 =?utf-8?B?Q0k1ZUpnU3hLa2Z6K1l1dkp5RlBTcTRYTEtyRzY0dm5pYlZjcXNmU2RUQ3Jp?=
 =?utf-8?B?TjlJSnRrMjdNdUxrMWVoc3BZS3FySmNlZStkTVI3SEVFN3lCWXYzUU9kbkMv?=
 =?utf-8?B?eGlHNTBNTlozdnkrU3JsY2VPTkl1U0xHcHo4S1lOOTVjTWNhRzRRb1pmY0xH?=
 =?utf-8?Q?eLCXSr4sdMQrUr9CTKDO3DiHa?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7d5acd7-6a02-4843-0422-08dd6b7a8db0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2025 08:53:46.5107
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YbvpojbtNmDUuQVTMBwVoPtZ7XjEtAPXOAHz9V3Cdt9APPKUdN0JEYdH7v3iQ3Z7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5840
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0D7383F328
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.237.51:from];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.51:from];
	RCPT_COUNT_SEVEN(0.00)[7];
	URIBL_BLOCKED(0.00)[mail-bn8nam12on2051.outbound.protection.outlook.com:rdns];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 2YHOR7R56LFGK2KFPIWM6LEHVFWM2LXY
X-Message-ID-Hash: 2YHOR7R56LFGK2KFPIWM6LEHVFWM2LXY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: fix a buf size overflow issue during udmabuf creation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2YHOR7R56LFGK2KFPIWM6LEHVFWM2LXY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMjUuMDMuMjUgdW0gMDc6MjMgc2NocmllYiBLYXNpcmVkZHksIFZpdmVrOg0KPiBIaSBDaHJp
c3RpYW4sDQo+DQo+PiBBbSAyMS4wMy4yNSB1bSAxNzo0MSBzY2hyaWViIFhpYW9nYW5nLkNoZW46
DQo+Pj4gRnJvbTogWGlhb2dhbmcgQ2hlbiA8eGlhb2dhbmcuY2hlbkBhbWQuY29tPg0KPj4+DQo+
Pj4gYnkgY2FzdGluZyBzaXplX2xpbWl0X21iIHRvIHU2NCAgd2hlbiBjYWxjdWxhdGUgcGdsaW1p
dC4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFhpYW9nYW5nIENoZW48WGlhb2dhbmcuQ2hlbkBh
bWQuY29tPg0KPj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCj4+DQo+PiBJZiBub2JvZHkgb2JqZWN0cyBJJ20gZ29pbmcgdG8gcHVzaCB0
aGF0IHRvIGRybS1taXNjLWZpeGVzLg0KPiBObyBvYmplY3Rpb24gYnV0IEkgd2lzaCB0aGUgYXV0
aG9yIHdvdWxkIGhhdmUgYWRkZWQgbW9yZSBkZXRhaWxzIGluIHRoZSBjb21taXQNCj4gbWVzc2Fn
ZSBwYXJ0aWN1bGFybHkgdGhlIHZhbHVlIHRoZXkgaGF2ZSB1c2VkIHRvIHRyaWdnZXIgdGhlIG92
ZXJmbG93LiBJIGd1ZXNzDQo+IFhpYW9nYW5nIGNhbiBzdGlsbCBjb21tZW50IGhlcmUgYW5kIGJy
aWVmbHkgZGVzY3JpYmUgdGhlIGV4YWN0IHVzZS1jYXNlL3Rlc3QtY2FzZQ0KPiB0aGV5IGFyZSBy
dW5uaW5nIHdoZXJlIHRoZXkgZW5jb3VudGVyZWQgdGhpcyBpc3N1ZS4NCg0KSXNuJ3QgdGhhdCBv
YnZpb3VzPyBBdCBsZWFzdCBpdCB3YXMgZm9yIG1lLg0KDQpBcyBzb29uIGFzIHlvdSBoYXZlIGEg
dmFsdWUgbGFyZ2VyIHRoYW4gNDA5NSB0aGUgMzJiaXQgbXVsdGlwbGljYXRpb24gb3ZlcmZsb3dz
LCByZXN1bHRpbmcgaW4gaW5jb3JyZWN0bHkgbGltaXRpbmcgdGhlIGJ1ZmZlciBzaXplLg0KDQpS
ZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFRoYW5rcywNCj4gVml2ZWsNCj4NCj4+IFJlZ2Fy
ZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IC0tLQ0KPj4+ICBkcml2ZXJzL2RtYS1idWYvdWRt
YWJ1Zi5jIHwgMiArLQ0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5j
IGIvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPj4+IGluZGV4IDhjZTFmMDc0YzJkMy4uZTk5
ZTNhNjVhNDcwIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4+
PiArKysgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+Pj4gQEAgLTM5OCw3ICszOTgsNyBA
QCBzdGF0aWMgbG9uZyB1ZG1hYnVmX2NyZWF0ZShzdHJ1Y3QgbWlzY2RldmljZQ0KPj4gKmRldmlj
ZSwNCj4+PiAgCWlmICghdWJ1ZikNCj4+PiAgCQlyZXR1cm4gLUVOT01FTTsNCj4+Pg0KPj4+IC0J
cGdsaW1pdCA9IChzaXplX2xpbWl0X21iICogMTAyNCAqIDEwMjQpID4+IFBBR0VfU0hJRlQ7DQo+
Pj4gKwlwZ2xpbWl0ID0gKCh1NjQpc2l6ZV9saW1pdF9tYiAqIDEwMjQgKiAxMDI0KSA+PiBQQUdF
X1NISUZUOw0KPj4+ICAJZm9yIChpID0gMDsgaSA8IGhlYWQtPmNvdW50OyBpKyspIHsNCj4+PiAg
CQlwZ29mZl90IHN1YnBnY250Ow0KPj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

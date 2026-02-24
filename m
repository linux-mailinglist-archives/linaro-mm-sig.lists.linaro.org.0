Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJrEGZdrnWnhPwQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 10:12:55 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC8F184560
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 10:12:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 917D5401B0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Feb 2026 09:12:53 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012070.outbound.protection.outlook.com [52.101.43.70])
	by lists.linaro.org (Postfix) with ESMTPS id 62A82401B0
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Feb 2026 09:12:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Ksu6xFpK;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.43.70 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xu+zRHon8C3PLvjEaPPs2zmavI+/0dVzvImCHgFOhWUxri6Ubbl25ERYwf5b2ICliq0v5Xgr+va96lKiPDVi3mUdHS50taxg+n85UdGLv/wYxfgKkAZQ1nitdYA1QT0mw4rFqI1YojDrb9OI1aHgY36+tPEUGkRAOn067N1FGtG/AWDuPzBxACaeTKoDncZdH6PC5JLddgUUrdTDdbPBHjucSB2LPfupWfDDys9rZLZKS4h/D8BEto//wzFn2LV405ocgEdNvm3HjSb66K6wRH7R85rSGUdFcQq3sB34xQu14kN9UacXiIXwBoidY31ZzcYerCFPxW1tl/zX59Yt+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ufXzMOHWxUJ0luDL7bPzACkdeeYGPmoemAe4BDfcByw=;
 b=o0I+3/ld58zW9r+SOuqZx8kqwIPNZ1Uxw7a9MkeBjO8UYxw3y+8dvMeUTc52m1UYHw/o03I8tOJVrh3AY3IUMAFM/KreZBekn3bHvf8pzTYTwyzYN6KM1jb/dCksZOWJv8FS63dph0ce2ngbfVxX5ULNwIBGoVqjT8bpMwAMWY5I83mo84ewT+9QBAwVRnMzPlGgN7oM/OXu6yi/cnal7F8l1IEQh6sPpnHeipif+6I0ullqgfhc1HEh5zcpTR/RdUvucC51c+Vv/8sscTNgq8HGggAND3aFaH7z/E3uYGZzIROeILVsUYPNtVzzjpnCj9hIZd1/BQpGImy3UK8UTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ufXzMOHWxUJ0luDL7bPzACkdeeYGPmoemAe4BDfcByw=;
 b=Ksu6xFpKNVDwnT0JxwWDAnnwtXryiPfTRdt68XJhTRzX/cIBzxZ6Gz1QbK8PP9IdFWZvMZBsMxaz6/5XKsk9FagmIYDiqsqUOQCXtLiC4k2g248ZbKxzc0q5kS2yMf/u4SYqvKWcyPOjmFjNzKm3yewGCuAQa9WbRpipZOI6HP4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB7780.namprd12.prod.outlook.com (2603:10b6:8:152::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 09:12:45 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 09:12:45 +0000
Message-ID: <e87c0c1d-82f1-4a03-9a56-9bf3e03273cf@amd.com>
Date: Tue, 24 Feb 2026 10:12:31 +0100
User-Agent: Mozilla Thunderbird
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260224-qda-firstpost-v1-0-fe46a9c1a046@oss.qualcomm.com>
 <20260224-qda-firstpost-v1-12-fe46a9c1a046@oss.qualcomm.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260224-qda-firstpost-v1-12-fe46a9c1a046@oss.qualcomm.com>
X-ClientProxiedBy: FR4P281CA0260.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e8::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB7780:EE_
X-MS-Office365-Filtering-Correlation-Id: 3087b48c-007d-4800-db5a-08de7384df4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|921020|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?U2hOTXpBWXYwVXVuRE9hNXEwK3gySi9VcFhDcFFtWjRUWVdldE5OWFZyM0hm?=
 =?utf-8?B?OUtIUGU4SnM5QkhpMlJuYlBEbzNnMEo3NHE0KzZZdllXTUlCVnI0T2J5MTRQ?=
 =?utf-8?B?Um16YzJNSmZOY0FDN1dXclg2WUFRQ2tLem1pL3pYNlBKbmhWbEVDaHZ0UjBw?=
 =?utf-8?B?S3I3MDZ1a05xMmNLa1lRencyRG5FUjdhSURqZXlxNFBvZzZPZ0JyOXZiQ01N?=
 =?utf-8?B?eXRCZkdqc05DenZVVkdIUFZBMllBdEo5QVBXWkhCTzk2NEdMWEZtNDUvdEVY?=
 =?utf-8?B?ejFVcjU0azhvL09yalBuMzFYRlUrVmdpZisyS1c3My9DOFJkNlcwL1JhS0x1?=
 =?utf-8?B?cnZ6WVlxMFhoK3Y1aUp6QkcrUW5ZVitIU0E2V1hLZXlDUkkzTGJBZE5LQ1NS?=
 =?utf-8?B?TFZEL1orbWpUcnZXY1l0eWdHam91Rm53c04vdGlEN2xqYzkyWTBYem1RU0Ru?=
 =?utf-8?B?akVtMDNZV1hQaTloVUg0b1B2TFNiR3RwSlRpYVVlVGNOdDB3TkxOdkZ6MTZr?=
 =?utf-8?B?bVlOakd2SWJUcWYwWm5meTVuY3ZyMWhxc2lHUEVndWIweXM1bmJ2RHEvdVRJ?=
 =?utf-8?B?dG5RbDU2NDR1RmdJNVhrNUFxQjM2c00rOTQ2U3ZQdEhaVTRGZlpKVkFiMzhv?=
 =?utf-8?B?UUtaQ3dtd0pDOGR3Zm9XYXJYa0tlVE9YZVozLzBpMWd0THVrOFllY2RacDJz?=
 =?utf-8?B?U3UwaTJXeW1iSHJQRkhjZHFpN2tUY1ZDbUVGdnBzNDVKV0NZU2NqdXprQnNu?=
 =?utf-8?B?RGZIOTdubVlKcFNjcHAzZHhJZW14UjJtb01Lamx2cG5mNjhDNkpPUDVLSjlC?=
 =?utf-8?B?eG5KdEhkWmw5cE5Id0d1ZEJKR1RZY0VOS2xKaE56bWdGckpJTloxZk9Bc0NG?=
 =?utf-8?B?dXhBR1JMTVZSTTd1SU9oM0doVWl3eE1yVzArV2lqNDRDTm1RbC95VWdmLzho?=
 =?utf-8?B?LzNhMnVaeTRLa3BNaGxSRmt6NXl3bk5aMElZVUpvekRmeUdBcjA3eTZkaW1F?=
 =?utf-8?B?eGdxcjAwWEl2OXNYdkJ2RzhkMjI5S1A4ZEdmYkZGcU9kQWw4aExoZ2o3SDFG?=
 =?utf-8?B?cGtZd29GMUJTMXlhYTkzdjd4WHlPSVZrbFZLeFkrdnQ4OUtOL012UmVBSC9t?=
 =?utf-8?B?cFN4ZFFTRjVKRFhkQkg3Vkw0ZjFXOVRXQ3dPdmNKaE9zVmQ4QXIrNkhlWUQ1?=
 =?utf-8?B?Nmp4cXI2UVcvWGwrMHNIbUhwSHI0bVBZdnFLc1RrT2UzS3l2YmpNUDZOd3Ur?=
 =?utf-8?B?elNMQ1NaOU03T0N0VE1pM0V4dFFMc2NEMVh1RUZwRS9ta3RtYUFLN2c4N0pk?=
 =?utf-8?B?R2lEQUpVd1B4bk5td0swV1Z6THVtY2Q5MnVZOXIxUC9xZVllRVRpK2kzUFYw?=
 =?utf-8?B?TE1QY2FVYjF0TCtobWNTOEdPWThYUENCTDBMWHFKVG9JVGlHQkJNaEZHS0Yz?=
 =?utf-8?B?bXFSWk5HQVR4QUhjNncrY1d0SGFNUmlnT3NaOHFTeUZQcE5hSE1jc2xBSDlD?=
 =?utf-8?B?OEpqTUhYbmFwbFRkYUpjdzdVWS84cGdrWUsrTDlKM0ZmOWpHMlFXeVBjVUJ6?=
 =?utf-8?B?K3NRWjJGSUxRTUY4S21ReldORUVXMjlPZ0d0eUJjODlrMDQyWjRtTUxxQysz?=
 =?utf-8?B?b0x6YWJLQTNJYUlsVnh4aDhhcVhSM0l1U0ZNQkFqVFFaUE1YMjlSMFhtOTNI?=
 =?utf-8?B?S3lmV1VzZkxYbmtIdFN5R2pxQjlPUHU4WDlTLytGT2d0OUlHNk9tTllIYytu?=
 =?utf-8?B?Sm9rQXBibkFQNEdxdC9yczg0SkZvYVdjRCswMW9zOUwxMUc4VW9RTEZROXVI?=
 =?utf-8?B?MFJ2eUdqQ1lQa2xETW9mQ0tDdzd1VlhzaVUzM0orQytWUGFYMHZYMjJrcmxu?=
 =?utf-8?B?M200MGppdTF2eC9hT2hJVy92R0dHOGhnYlZrc0s3bWVFVnlzZGI3UGRBOERr?=
 =?utf-8?B?blJiYkk5bnd6SnJXbGo2KytSR3JDSSt3Z2Rpb25TMkppa09PRHVKbEo1MDNC?=
 =?utf-8?B?SVdiajlEV3BjUW1aTm9JQ1k4VGNPeHYwVzRQZHJVUHA3QnoxZStzQUV1L01P?=
 =?utf-8?B?dXM4MjE2Z2lMMzBDNXpoZjRzVU1hWVlKVjJyMXZFdTVVQTNRN1o0U3lJWmc3?=
 =?utf-8?B?Y1B0V1dtVzd3RnIrdnZlb2xHYjNFUnAzVm00dkVBK1huK0RBWktzbXBmbUd2?=
 =?utf-8?B?cEE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OE1jUXVSMVdnd2V6SzFZSkUxVU44M0hpQnZmOHlTL0sybW0wWmU4WExLelF0?=
 =?utf-8?B?UHM2OUtxTVJHV2dtTXlDZ3lDYzRLV1dQMTUyb2RyRFJ2QkErK29kWkFVdjlY?=
 =?utf-8?B?cUVSczlrOVBHQmIxeEVLWW9tWUJmQjhBbW5rZ2N0YUwvOHN6anViUjZHblky?=
 =?utf-8?B?VUJhejVmQ0NvcDdOMUFwc1VvMDhBcnRiakVtemJQcmNKWS9TWCtSTDZmaUVU?=
 =?utf-8?B?S3lUSCtOMUhKRGkxbTNsYUdRYzNGNU1zU29QNUkwaVhobHI0UDd3VUNsekNy?=
 =?utf-8?B?VTl4YUFqKy9GTktqODc5Y1V1cCtEc2tUUXZEWmxEMjVkL1JWcTZSbG0vQlRo?=
 =?utf-8?B?SHBiTjFLbElRbWxGUndIb3BBUkdXWEZ0L01Hc2tiNUQ5bmNPL09Nc3BiMXlz?=
 =?utf-8?B?TDBMY3FmeHNQODBnT3BEK2Jnd1ZwcFlzN0tVNDlhNll1NXFtK3MwMlpxd1Rn?=
 =?utf-8?B?NkFhVXp0U1kxc1VHR3U2L0hzeVBGYmJPMm5VcS80MGxwcUZpN0cxQWdTWEpu?=
 =?utf-8?B?Q2tDbXZsQmhieVhERUNKVVdGQUY2RjFiRUFVdERXNFd6eHpNM2FTenZuc3hK?=
 =?utf-8?B?ZWlZdktuRE5FSFp6K1drRFRMMjB2am1uL2hYZFB3UmdGQysxemZaUTBML3Zo?=
 =?utf-8?B?Z0NmcGJwMmFabWEwZkRJSVU2WXd6RGRTZzFLb3dCMHpLL1pabUZHaHRJdUYw?=
 =?utf-8?B?d0FGbnBCU1JCTXg1dThEZVpUeXM1RkxzNU9rSG93THNIUlh5cndQNlpwZGR4?=
 =?utf-8?B?SHNzT3lFdWNMVE5EQnIyaXhiZDNSV29vQk1Sd0kxemtGcGh0aXNLNkdOYzM3?=
 =?utf-8?B?WEV1QkJZbEdOd25NSlF5SEYrRmVyb2hISms5dk1XVmtLSGdQMWUxVUpOck9P?=
 =?utf-8?B?R2g1c3dBenBXZEltdXp4c3JTMWFPSTlsM29ZQnRNZk5zdFBzSXgzWXBBYWdM?=
 =?utf-8?B?c0N4d28yODhvQSthRXhnRTVjQXJ0TjBiYTVpdjJ5cjR1aHN5NlJhWHBvcGM3?=
 =?utf-8?B?S3VmV0RjdHNSN3o0bUVmbUtaUGVudU5Ici9TTlVocVc4MmZtWENPQkc5bzBN?=
 =?utf-8?B?bVZhdmFoMUVXaDVVQ2hCRXZLdDliQ3BmZlFMVk9PakNtTkVxVjF5ZHNqTDBn?=
 =?utf-8?B?RCtXWkdudmxxK2sxVTdpSTNyVUhXaU5jTGtqZ0NqdU1hT0Y2R3hvWlBpQWdJ?=
 =?utf-8?B?RWQyZnFoT3AwME5oNXZuL1ppMDJQeE5iN3RTeTA3ZTI1S2pPSml0SEZYWm1L?=
 =?utf-8?B?dGN0OVBqTFZ0T0RnNHozZ3picFUrYVNQN3BtQVpMRHAreVV4ZlladHpTaFhB?=
 =?utf-8?B?c0RaQVJwTVZXY0hQeXV0MFdqUVU3NmZjZS9Dak9yd3RFTHR1V2FpMXdNYjA4?=
 =?utf-8?B?NEVzU0duc2VrTFFZZFhKRXh4ekhpT3h0U01pdGo0bVRkQUpoa1BSWldOYVJk?=
 =?utf-8?B?VU4wS3ZURUpobUgwUmZwME5zMDhjUXdzQi9aNm9haTl0WWg1S3U3WjNFbGcr?=
 =?utf-8?B?aWZVakpVOHpRdHM0YWJiT1hGdzZJYmswb2tHNUZKbnNURkFiY2FqbDVLdTg4?=
 =?utf-8?B?d1N4SlY4ZzAzMWY4L0lpQkx4MGhRMHgwQjRPT3JZVGI3RzZoc21jR0VIbnlK?=
 =?utf-8?B?TC9iTzhTbGIzQlMyZzVoVDRoNGxLTGsvaGRFVTRwek8vSnVEbW5tZG0wV2R4?=
 =?utf-8?B?aFRFN2dXWDErNlpkRUlxSXJBWFNEUFE4Sm1OYytBWXpXaGlibkR4QmlEeHM5?=
 =?utf-8?B?K3I2bTMzK25BNXEvZy90V05VVktQYnhkTXliT01yTEYwSWFLd1ByVDlsNmVy?=
 =?utf-8?B?aXA0aUVsd0JWVWdHa2UzK0VZemw1VW50anBpK2xvb3g2SU1mV0N4YlRyallZ?=
 =?utf-8?B?RjNuOWpBYlhUZFFWd0RvL3l6L0ovWnhuTXhWeGorcjRUem0zdGdZeUhIeXdE?=
 =?utf-8?B?NmNsODlXalluY09JS2xPdTJFWnNkRHQ2dFR1VWN5bFREay9FWHR5dENLcUxl?=
 =?utf-8?B?VlJGTGpKZmpacWVKUkE1QjJ1NHZCNXBQTXdHV3lUYXArOTN5Z1lmMGJyUWpM?=
 =?utf-8?B?SHRKUFRlb3pEanN6V2pTV1lxWHh5QW4wK2dvV3Rmc2hROGtNVkpCMlpNUFRj?=
 =?utf-8?B?V0E2QWJ2UG1XQ04zUTlwQlNtUkZucEQrL0F4MVB1clA0UUJKOTNDSjFqVXpL?=
 =?utf-8?B?ODVyR2x3WHE3WUV1OEZlWWxlTHRXNGpTekNzNHBWUC84bHBvQWIxVUgzMEVk?=
 =?utf-8?B?NWVxUXlpaFkwdlpRb0xhTUFzZVczS1Y1SFdSNVZjb28wVWcrZVZmbWtDb0Mv?=
 =?utf-8?Q?aXudlNRcegXfr2L2P5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3087b48c-007d-4800-db5a-08de7384df4d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 09:12:45.4844
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pThJ454xjrTKAvNLyN2kpz9PJ548iMi8kzcnY9B/V2EOQWZklJ586CP/5LaZrE18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7780
X-Spamd-Bar: ----
Message-ID-Hash: A5NQRUGKRNEZXTYQVUHDLDEQJ7MZJRPD
X-Message-ID-Hash: A5NQRUGKRNEZXTYQVUHDLDEQJ7MZJRPD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 12/18] accel/qda: Add PRIME dma-buf import support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A5NQRUGKRNEZXTYQVUHDLDEQJ7MZJRPD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	REDIRECTOR_URL(0.00)[aka.ms];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,aka.ms:url,qualcomm.com:email,linaro.org:email]
X-Rspamd-Queue-Id: DBC8F184560
X-Rspamd-Action: no action

T24gMi8yMy8yNiAyMDowOSwgRWthbnNoIEd1cHRhIHdyb3RlOg0KPiBbU2llIGVyaGFsdGVuIG5p
Y2h0IGjDpHVmaWcgRS1NYWlscyB2b24gZWthbnNoLmd1cHRhQG9zcy5xdWFsY29tbS5jb20uIFdl
aXRlcmUgSW5mb3JtYXRpb25lbiwgd2FydW0gZGllcyB3aWNodGlnIGlzdCwgZmluZGVuIFNpZSB1
bnRlciBodHRwczovL2FrYS5tcy9MZWFybkFib3V0U2VuZGVySWRlbnRpZmljYXRpb24gXQ0KPiAN
Cj4gQWRkIFBSSU1FIGRtYS1idWYgaW1wb3J0IHN1cHBvcnQgZm9yIFFEQSBHRU0gYnVmZmVyIG9i
amVjdHMgYW5kIGludGVncmF0ZQ0KPiBpdCB3aXRoIHRoZSBleGlzdGluZyBwZXItcHJvY2VzcyBt
ZW1vcnkgbWFuYWdlciBhbmQgSU9NTVUgZGV2aWNlIG1vZGVsLg0KPiANCj4gVGhlIGltcGxlbWVu
dGF0aW9uIGV4dGVuZHMgcWRhX2dlbV9vYmogdG8gcmVwcmVzZW50IGltcG9ydGVkIGRtYS1idWZz
LA0KPiBpbmNsdWRpbmcgZG1hX2J1ZiByZWZlcmVuY2VzLCBhdHRhY2htZW50IHN0YXRlLCBzY2F0
dGVyLWdhdGhlciB0YWJsZXMNCj4gYW5kIGFuIGltcG9ydGVkIERNQSBhZGRyZXNzIHVzZWQgZm9y
IERTUC1mYWNpbmcgYm9vay1rZWVwaW5nLiBUaGUNCj4gcWRhX2dlbV9wcmltZV9pbXBvcnQoKSBw
YXRoIGhhbmRsZXMgcmVpbXBvcnRzIG9mIGJ1ZmZlcnMgb3JpZ2luYWxseQ0KPiBleHBvcnRlZCBi
eSBRREEgYXMgd2VsbCBhcyBpbXBvcnRzIG9mIGV4dGVybmFsIGRtYS1idWZzLCBhdHRhY2hpbmcg
dGhlbQ0KPiB0byB0aGUgYXNzaWduZWQgSU9NTVUgZGV2aWNlDQoNClRoYXQgaXMgdXN1YWxseSBh
biBhYnNvbHV0ZWx5IGNsZWFyIE5PLUdPIGZvciBETUEtYnVmcy4gV2hlcmUgZXhhY3RseSBpbiB0
aGUgY29kZSBpcyB0aGF0Pw0KDQo+IGFuZCBtYXBwaW5nIHRoZW0gdGhyb3VnaCB0aGUgbWVtb3J5
IG1hbmFnZXINCj4gZm9yIERTUCBhY2Nlc3MuIFRoZSBHRU0gZnJlZSBwYXRoIGlzIHVwZGF0ZWQg
dG8gdW5tYXAgYW5kIGRldGFjaA0KPiBpbXBvcnRlZCBidWZmZXJzIHdoaWxlIHByZXNlcnZpbmcg
dGhlIGV4aXN0aW5nIGJlaGF2aW91ciBmb3IgbG9jYWxseQ0KPiBhbGxvY2F0ZWQgbWVtb3J5Lg0K
PiANCj4gVGhlIFBSSU1FIGZkLXRvLWhhbmRsZSBwYXRoIGlzIGltcGxlbWVudGVkIGluIHFkYV9w
cmltZV9mZF90b19oYW5kbGUoKSwNCj4gd2hpY2ggcmVjb3JkcyB0aGUgY2FsbGluZyBkcm1fZmls
ZSBpbiBhIGRyaXZlci1wcml2YXRlIGltcG9ydCBjb250ZXh0DQo+IGJlZm9yZSBpbnZva2luZyB0
aGUgY29yZSBEUk0gaGVscGVycy4gVGhlIEdFTSBpbXBvcnQgY2FsbGJhY2sgcmV0cmlldmVzDQo+
IHRoaXMgY29udGV4dCB0byBlbnN1cmUgdGhhdCBhbiBJT01NVSBkZXZpY2UgaXMgYXNzaWduZWQg
dG8gdGhlIHByb2Nlc3MNCj4gYW5kIHRoYXQgaW1wb3J0ZWQgYnVmZmVycyBmb2xsb3cgdGhlIHNh
bWUgcGVyLXByb2Nlc3MgSU9NTVUgc2VsZWN0aW9uDQo+IHJ1bGVzIGFzIG5hdGl2ZWx5IGFsbG9j
YXRlZCBHRU0gb2JqZWN0cy4NCj4gDQo+IFRoaXMgcGF0Y2ggcHJlcGFyZXMgdGhlIGRyaXZlciBm
b3IgaW50ZXJvcGVyYWJsZSBidWZmZXIgc2hhcmluZyBiZXR3ZWVuDQo+IFFEQSBhbmQgb3RoZXIg
ZG1hLWJ1ZiBjYXBhYmxlIHN1YnN5c3RlbXMgd2hpbGUga2VlcGluZyBJT01NVSBtYXBwaW5nIGFu
ZA0KPiBsaWZldGltZSBoYW5kbGluZyBjb25zaXN0ZW50IHdpdGggdGhlIGV4aXN0aW5nIEdFTSBh
bGxvY2F0aW9uIGZsb3cuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBFa2Fuc2ggR3VwdGEgPGVrYW5z
aC5ndXB0YUBvc3MucXVhbGNvbW0uY29tPg0KDQouLi4NCg0KPiBAQCAtMTUsMjMgKzE2LDI5IEBA
IHN0YXRpYyBpbnQgdmFsaWRhdGVfZ2VtX29ial9mb3JfbW1hcChzdHJ1Y3QgcWRhX2dlbV9vYmog
KnFkYV9nZW1fb2JqKQ0KPiAgICAgICAgICAgICAgICAgcWRhX2VycihOVUxMLCAiSW52YWxpZCBH
RU0gb2JqZWN0IHNpemVcbiIpOw0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+
ICAgICAgICAgfQ0KPiAtICAgICAgIGlmICghcWRhX2dlbV9vYmotPmlvbW11X2RldiB8fCAhcWRh
X2dlbV9vYmotPmlvbW11X2Rldi0+ZGV2KSB7DQo+IC0gICAgICAgICAgICAgICBxZGFfZXJyKE5V
TEwsICJBbGxvY2F0ZWQgYnVmZmVyIG1pc3NpbmcgSU9NTVUgZGV2aWNlXG4iKTsNCj4gLSAgICAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiAtICAgICAgIH0NCj4gLSAgICAgICBpZiAoIXFk
YV9nZW1fb2JqLT5pb21tdV9kZXYtPmRldikgew0KPiAtICAgICAgICAgICAgICAgcWRhX2VycihO
VUxMLCAiQWxsb2NhdGVkIGJ1ZmZlciBtaXNzaW5nIElPTU1VIGRldmljZVxuIik7DQo+IC0gICAg
ICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gLSAgICAgICB9DQo+IC0gICAgICAgaWYgKCFx
ZGFfZ2VtX29iai0+dmlydCkgew0KPiAtICAgICAgICAgICAgICAgcWRhX2VycihOVUxMLCAiQWxs
b2NhdGVkIGJ1ZmZlciBtaXNzaW5nIHZpcnR1YWwgYWRkcmVzc1xuIik7DQo+IC0gICAgICAgICAg
ICAgICByZXR1cm4gLUVJTlZBTDsNCj4gLSAgICAgICB9DQo+IC0gICAgICAgaWYgKHFkYV9nZW1f
b2JqLT5kbWFfYWRkciA9PSAwKSB7DQo+IC0gICAgICAgICAgICAgICBxZGFfZXJyKE5VTEwsICJB
bGxvY2F0ZWQgYnVmZmVyIG1pc3NpbmcgRE1BIGFkZHJlc3NcbiIpOw0KPiAtICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7DQo+ICsgICAgICAgaWYgKHFkYV9nZW1fb2JqLT5pc19pbXBvcnRl
ZCkgew0KDQpBYnNvbHV0ZWx5IGNsZWFyIE5BSyB0byB0aGF0LiBJbXBvcnRlZCBidWZmZXJzICpj
YW4ndCogYmUgbW1hcGVkIHRocm91Z2ggdGhlIGltcG9ydGVyIQ0KDQpVc2Vyc3BhY2UgbmVlZHMg
dG8gbW1hcCgpIHRoZW0gdGhyb3VnaCB0aGUgZXhwb3J0ZXIuDQoNCklmIHlvdSBhYnNvbHV0ZWx5
IGhhdmUgdG8gbWFwIHRoZW0gdGhyb3VnaCB0aGUgaW1wb3J0ZXIgZm9yIHVBUEkgYmFja3dhcmQg
Y29tcGF0aWJpbGl0eSB0aGVuIHRoZXJlIGlzIGRtYV9idWZfbW1hcCgpIGZvciB0aGF0LCBidXQg
dGhpcyBpcyBjbGVhcmx5IG5vdCB0aGUgY2FzZSBoZXJlLg0KDQouLi4NCj4gK3N0YXRpYyBpbnQg
cWRhX21lbW9yeV9tYW5hZ2VyX21hcF9pbXBvcnRlZChzdHJ1Y3QgcWRhX21lbW9yeV9tYW5hZ2Vy
ICptZW1fbWdyLA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IHFkYV9nZW1fb2JqICpnZW1fb2JqLA0KPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IHFkYV9pb21tdV9kZXZpY2UgKmlvbW11X2RldikNCj4g
K3sNCj4gKyAgICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOw0KPiArICAgICAgIGRtYV9hZGRy
X3QgZG1hX2FkZHI7DQo+ICsgICAgICAgaW50IHJldCA9IDA7DQo+ICsNCj4gKyAgICAgICBpZiAo
IWdlbV9vYmotPmlzX2ltcG9ydGVkIHx8ICFnZW1fb2JqLT5zZ3QgfHwgIWlvbW11X2Rldikgew0K
PiArICAgICAgICAgICAgICAgcWRhX2VycihOVUxMLCAiSW52YWxpZCBwYXJhbWV0ZXJzIGZvciBp
bXBvcnRlZCBidWZmZXIgbWFwcGluZ1xuIik7DQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJ
TlZBTDsNCj4gKyAgICAgICB9DQo+ICsNCj4gKyAgICAgICBnZW1fb2JqLT5pb21tdV9kZXYgPSBp
b21tdV9kZXY7DQo+ICsNCj4gKyAgICAgICBzZyA9IGdlbV9vYmotPnNndC0+c2dsOw0KPiArICAg
ICAgIGlmIChzZykgew0KPiArICAgICAgICAgICAgICAgZG1hX2FkZHIgPSBzZ19kbWFfYWRkcmVz
cyhzZyk7DQo+ICsgICAgICAgICAgICAgICBkbWFfYWRkciArPSAoKHU2NClpb21tdV9kZXYtPnNp
ZCA8PCAzMik7DQo+ICsNCj4gKyAgICAgICAgICAgICAgIGdlbV9vYmotPmltcG9ydGVkX2RtYV9h
ZGRyID0gZG1hX2FkZHI7DQoNCldlbGwgdGhhdCBsb29rcyBsaWtlIHlvdSBhcmUgb25seSB1c2lu
ZyB0aGUgZmlyc3QgRE1BIGFkZHJlc3MgZnJvbSB0aGUgaW1wb3J0ZWQgc2d0LiBXaGF0IGFib3V0
IHRoZSBvdGhlcnM/DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

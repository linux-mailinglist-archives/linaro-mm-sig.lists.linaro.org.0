Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAjnIS9yg2mFmwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 17:22:07 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CF4EA215
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 04 Feb 2026 17:22:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E61FE3F722
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Feb 2026 16:22:05 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012059.outbound.protection.outlook.com [52.101.53.59])
	by lists.linaro.org (Postfix) with ESMTPS id C562B3F750
	for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Feb 2026 16:21:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=dw10h5er;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C5K24x3TjAR4QcyEqR9Rr6MyMVRl01zPDe+HfO3GWYGJgYDKeNj6nqjkmmO/0Lv00M0vq/Lz9ZaVO9V2C4SmD6SYyPZOCK7ysY95NNCIVN2jGEV9iXWYtVwnLuLE8Q+eAApn/UQopS1cBJgq+WabGWlAQsOjWt7lRdyid/DQAv3Tjw7xIW+uN4feZAmnJzmjRZEPrw5K9c3k/J5Rkc615kEIVOsM2H1Xmx/5fLRFyPSfD4q1YEhtYpDxMOUDO/fAXIEM/diQBHVeABoWXHRlDYliAPEenk/0zKD/eS8bKGjzzACrNd3YXC9H/rAwO/yhaD04KhTJDytn9YTH0pFVbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rm3DWcke8SB4n13gY+v4wuFPjMZQKZyLvLnh5u9elGw=;
 b=JjsuyQEUJY44zfL8tdbXPvM1OjmFBcmj6pCuVYqT4nvz6AeRRyP6kfvnTfyShf2XeSMDbBSgw5bXxAX0Ym0AQ+dG1exE7EC3WWg1zceQ3xu68bxFV/AJKvzle6Fy5gEq3pGDtULjLWP5wlPtyFbR6qcBx/VxIoZXVTm7J+ffSDcq+9v6ulyAaihpXxN48LynUA0ALtlqB7K7xLgcC1zoaLr6sJakNqpPX2bkg7BPuxpwf3vSQx1ffNho+9ln9+nFbbYx84aL2yjRy9zYlm3kXYgmUaPC/IRlZdS/Q+G7nFHlIxOEzCAQpeilp+MP6+j5j7q85L7Jk86RY/Hy2oFgow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rm3DWcke8SB4n13gY+v4wuFPjMZQKZyLvLnh5u9elGw=;
 b=dw10h5eruIfdxeozKYB6HqcxBW48A8dWWZ3aZNxwTuOpBhg5hh88qUrHqSuaO6rARjjKaq0arbQVqAbz3odR7ia9zPetdPHuPmlBF4KvfuDyzVIFI1MdOHA7h5ryHPMfJpxF1SRJ/knd3GA8dMbqN5eT9cDG9DkWOiJc8ModDbo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB5601.namprd12.prod.outlook.com (2603:10b6:303:168::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 16:21:53 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9587.010; Wed, 4 Feb 2026
 16:21:53 +0000
Message-ID: <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
Date: Wed, 4 Feb 2026 17:21:45 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>,
 Ankit Agrawal <ankita@nvidia.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
X-ClientProxiedBy: FR4P281CA0446.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c6::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB5601:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cf6377c-c49a-44b6-bc3e-08de640981f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L253RXhGZ01YRmxHN3NpNi9CWUY1eW02OFdvUDQ3Ryt1R1p1d3JUOEVxOENu?=
 =?utf-8?B?Z0pzdXJHejRRQUl2Q2Q3aDJ1cm9qY1RtYmwrUmNRUnhqemJmKzZLR0h0TERl?=
 =?utf-8?B?QVVwRnRwQXpSVjBrWngrTVFRTEp1TUdwZWppUXdCVzkwU2J6TVJkVk9wNXR6?=
 =?utf-8?B?ZlZ3UFV6SFd2STZUTFp3SnllOEFmZ2xKTVZHZFZBbURBYTJ2Vjlvc3FyenZh?=
 =?utf-8?B?K2gvSkZXNkdZZE9aV3JjWWlobnhyM0VTcjNVK1VYVXdYVkVRSktMSGJaTVpn?=
 =?utf-8?B?bjlON1dpTm1ZVHkvZXRHMGovRTI4T0JGZkJVOTd3TDdqb2c1MGdhVzNIYVpR?=
 =?utf-8?B?bW1CQWNpU2FjYW1DTFBpQm00MHFUK1BsRXE5bU5DOVFzSDRabjk0VjRRVkQz?=
 =?utf-8?B?WHV2b0NERy9CdUFTT3QzNjZuK0VYdS9FVmhZL0ZMUnMrRGZFUGVBZXhHcEdu?=
 =?utf-8?B?ZzRsWEhBNGNLNFNtYjRPZnlQSEhaMkxOSitVaUJQcjl1N2hnbEIrREhPMHcy?=
 =?utf-8?B?WlBQMmwxUGkyUHNDdnRDKzZsaGg0Qk14WERmSy9qSUdkYnQ2QXhreEJZVGZG?=
 =?utf-8?B?ellQcS9zaTk0T2NpWFNQTlZYRUY5OWxSaUFWbnp1NTdWVlV6T3J4bi9IM2pi?=
 =?utf-8?B?Y1F0QjMzWGVHalFMRkR5V05uQ2IyQTk0QWcxVVE4WmdZZlZPaDZ0OU5pc2Y4?=
 =?utf-8?B?MnZiNkIveTlyS2VzTGRjTHdmaWdydGVKcm00VUpGTEUrNzdja29HblM3SG1M?=
 =?utf-8?B?OTB3bzZqZHRyWTRvc1RWTzl1MGVqQ0ZscXpyOTMrMW85OFV5WXpNSEZNQkM0?=
 =?utf-8?B?MzQzSlRoYTRPUTJwRmpjcGMrbExnc0hnb0pBNG14TUUyampoczVtYzNubXNa?=
 =?utf-8?B?blo5NjdJSHRRcncwS3QzZnB4ak15S2JyZFkvSjF3V1RjdWNIRmhnYVlOd0hu?=
 =?utf-8?B?V1hqRWFwK0JNcEFhOUpQckVuMXBzU05UZGVpRG14NkRHMFhVdDhzZDlHVWhp?=
 =?utf-8?B?YmtGSDBJZWtoZDFKTWZKTnp5Wk5Uc2cvQzdyd1JENUNtcFhEV0JqYWRTdlAy?=
 =?utf-8?B?K3ZVMFQzTXJnNEF2UitZMmZidGRRbXhUQzdEaFZORE1XODc3emJuM3JNcGVp?=
 =?utf-8?B?UTVWY29TODZ4bG9JNmQ3aE9KeVFiZUFIZkhjSUhHWk9sMWVwS295azliM1dR?=
 =?utf-8?B?eFExOVAzbjdoVTRjQ0EzaWRFcnVLb0p2Z3BMNVVwOERCZGRSSFhnejZZVWtr?=
 =?utf-8?B?MktPcWc2UnRBdEwxTUVsMTQzeW5uakhrTGYwZ0E5U0lva3F4ZTJvbUQ4VlZz?=
 =?utf-8?B?Rk1ONTVrZlNSdk5aWHYwWFRhblhZYksranRSSmt4OXFoTmRPODMwdTAvdGt1?=
 =?utf-8?B?OU9Ub3MwWk44VEFKTWcxMU5YcFhsYnZwMVhrY3FPQm44YWMwR1VEMncxeERv?=
 =?utf-8?B?Mld3MmhPcm95eFdxbnc2THJsK1N5bTg1bmZXSnlFWWFDZGswQmI0ZTJOZHB6?=
 =?utf-8?B?WVp1YlJTVjNadC8wb014aHMvVDdxRFNmUXZmckV2TlJOL2JBaklWaDgwL005?=
 =?utf-8?B?SVpZTW8vaFlDUXVUelZBaEZXeExES3ZQVkliZzNlQnVrWDFmc1lsNG82NlFz?=
 =?utf-8?B?L1FDOGg1QlhZQkU1SkRKc2Vxd1pYNGtQVjlYQzUvbTI2NFVWSE9XRTR0V0JJ?=
 =?utf-8?B?R01jMzY2ZmVQZE8yNHh1RTREY0JweVplbkI3NnRZN0RjdXBuVld3MitZVDlH?=
 =?utf-8?B?T1U4Wk5iK1gzRVVRL1ZRRVpmQmcwbkczcnNScU13Njd1NUFxT1V1Rk10OE5w?=
 =?utf-8?B?ZkpvbmNYVWgzOHErWUlXTGRvZm1OVnRBa2QzSFJtWWZNZmQvUUhuNWMyUW1H?=
 =?utf-8?B?VDczdEN4K0dJellIdFkxbFZFaDZKd3lOVE4wcG1SR1FKU1pDWWRsUVhiam5v?=
 =?utf-8?B?SVFpZjZRbVNQdnZKNW81YWtDUTg3ZGdOVXJGR1R4VVFPTTdmNjVKNU5ULzVu?=
 =?utf-8?B?eXNGUFlGb3MyMTlZWDNDUk1lYXRWMllQZlplU0pHOEtYVHNwcCtwOXlkbkV6?=
 =?utf-8?B?RVE4L0s4bFhDK25rekQ1TkR5TCtCbFVTVUdTOGprRE4vRWNvNDAwRnBiNzA0?=
 =?utf-8?B?MmR4TmIvTEk5Ykp0dEV2dzRVUHkxZ2x2YzBkZjJNUVFLaHFKM2hvMnRZeVA2?=
 =?utf-8?B?RGc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K1NLQ3d1OFloZVRVdTBEUU9zNXZCUXc4RzROMWF1QUM2SzJsMC9MTzZKWTJU?=
 =?utf-8?B?QkVBckVpU2kyeWk2ZVUxZ0NIYU5ZcGk3QnhEOGQ0ZnZGTWdqMWpxRmV3WGZY?=
 =?utf-8?B?c01XckZ0SGN3L29TcVgvSFA3b2k3OVBiUmpFOGsvVXVLU3NnSFc1b0hpNm1N?=
 =?utf-8?B?aXdYcHdVNnhENFRtZEJjSFRvbXRYRDhRTGZSTXMvUG5LZWVxcUplNUxyK2dU?=
 =?utf-8?B?cFFIV3Q5QTlpcnhJNVBDbTFLZE9WNHBYMWxwWlQrZXIrSzR2c1FQN3lsVlor?=
 =?utf-8?B?NnBFaFBEaHFENm42TzZoMUZMQ2JUQWRRci9ZN0JtR2QvL2pkNkVGYUZSM25G?=
 =?utf-8?B?T1lTRXBhNG5jTEVNRDFiaHNXYkpNejBhNkR2ZmV1WVZXSldiQ2owUnNrRmJt?=
 =?utf-8?B?b1ZzcGNDbS9vODlKNE1YMmZnaEZFN0RObzZLN0I5MVR3dDJoOStNcWExdG5R?=
 =?utf-8?B?ZHVPK1o3dUhUeVpDN21jQkxSRzZnMlVVKzBHM2k5ajBrVTRQMzZMZHBPaEg0?=
 =?utf-8?B?K0V1RDV2S21qbW9xbU1JYXJsQlAxMHpYMU04Y0ZQT3FtQVI2cm5OREovTEZ0?=
 =?utf-8?B?Z2JURTg1NG1SK1VZZmRTYS9sYmhrVm9VZDVlbno2VVlUQ05wUUxBTVIxWTQv?=
 =?utf-8?B?b05yUHJWU0pHVjJVY0tKbHNwdm1HVmpWd1BVK0RVd1hvS2l2TGFmZTh5djZt?=
 =?utf-8?B?Zm5yOU1lNlpvMTlKS1lnRkRETGZzMDduMVpmaDJYMXh0MDA3d2I3TkNkS3VR?=
 =?utf-8?B?V2tDd0NVOHJCSnRpVjl2RzNjeDZGZnIzMmZWNUUzQzhqZU5CRHplMjByZ2xD?=
 =?utf-8?B?bmpMbjZlU2NSaW9jSDBBS3NzTTJoNnd4N1dXRERFVWVVTXMzNk1sZDliNm9X?=
 =?utf-8?B?bVlGL3VSNGZzUkpMbEdKUFlYOUpORnV6SUVROWlpRENZeDJ0RU9BRUF3Y2hK?=
 =?utf-8?B?N2RpRjBiMW1QdThBTkZnQVRjMTh2WDY1VDdNa0NaRUxxN3l0TWwvY3hQR01U?=
 =?utf-8?B?NkhPb0hIOHErRm9ibkZFMEVScDBNRVl5SlpBS21mN2kwOWliVDlsUndON21q?=
 =?utf-8?B?c0FOSHN6UHg5OTJpOW9BZ2NRalYrLytCY1h2S1BRUlNDSHpDaW1MVDMxVTlK?=
 =?utf-8?B?YmdGOVZtK1V6a3NuS1VrL1Z3cnFjRWdIUHo3VUhlaXZJU3dKTmdsWFFFckQr?=
 =?utf-8?B?ZVlQSFZhdkRkTFJvQldSN3BDenJKYzk5Rlh3cFprUXA2NlpRdHM4dldLdVIy?=
 =?utf-8?B?bGZCQnVlSU5NYXdzM2pWNGpYUnNFZVlpbTBUckZEdW8vR1R2Rm1jMFZOelJI?=
 =?utf-8?B?aERrMGNsTHlaQno2QWFzN0x0RHUyVDA3Z0pVSTFCM1M0a1BiVmdzRkxzeTI5?=
 =?utf-8?B?TzVNMjdrVlRUZERaSnlXOUhIRDJ2RjNGekcza0pnZllKdm5uRkhlZVlYclZ2?=
 =?utf-8?B?YlBIcnZYMEluRjYwamRORnl0TDJ3czNpWkV4UEpmVjhPMEt1MU80T0t2NUV4?=
 =?utf-8?B?WXFnemwxdGpYVG01N1ZHc0kzM21ENGJsYi9hNTFnMmJrKzVYYkgySUlia0dY?=
 =?utf-8?B?UEczWlRUU2hYYlQ3S3BjMjZvbkV1Q2sxTG5PRk13cE0rN1lGazlUZDhEcXJ5?=
 =?utf-8?B?OGV2dkNCRjVkUXdkVXR2N0ZjT3BPd1NYbGlyQmNYVXZSS0psVExjejhQUUNO?=
 =?utf-8?B?RTkwMzNaUm54SHJldjl0V1VDOUxoSG1yaW5BbHo3M01TNjVxcGJRUXdHMUNQ?=
 =?utf-8?B?d3Qyb2l2QThteHEzWFlyUUtPSHNzWjlYb3hPQ2xqYXo5b2k4WlFuTnRMTndj?=
 =?utf-8?B?QXJVOVlXMkVicCt0eGdLQi8wWSt4M2hwY1dxV1F4UjVEamNIR3JKZVo2MWdr?=
 =?utf-8?B?TDF3RGFJT0JzYmkvL3VkOVZIV0wwNzBXSG9OSUk5QXMwdUtCMDZsbndTWlNW?=
 =?utf-8?B?UTIvZjVMOHJSeFlaNU9FY2RPdFVmWSt0Nm95Y0wzNGk2ZExQUmk1VVhGbEdt?=
 =?utf-8?B?bGJka1pxSXZLWlNRMG1vQjcyRDB6dmtsVEpuYUI5NzFiZjhXREptdmVuaEdX?=
 =?utf-8?B?MGJBcmJBRE5EVHRXWU9Pa0s2T2w2V09GMjZpY1RidW0xa3RhSkw5OFpTREx0?=
 =?utf-8?B?a3ptOFVzRW4yWmExTCtaL2FJby9saTVlbHBteGlzQUY3ZDhlVGZsaDV4Z29B?=
 =?utf-8?B?ZHpONERmWFlDdklUalZueXBLQlBlM2RFanFUY0o1T2ZIdXNNRkhDb0dLUTYv?=
 =?utf-8?B?L2hWaGRWTWFBYnhLTW9CdkRlYmlMVTN1aEM4aUNaWlhOdVA2bFNST3p3dW5v?=
 =?utf-8?Q?Hqox3iWGa+M6LUTCvW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf6377c-c49a-44b6-bc3e-08de640981f5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 16:21:53.3750
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ggWSSFPIlWl82N4LfQAblC16qbnUgaNii+P4OIVW0JKD8VwkqIetY/sh8TadadM9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5601
X-Spamd-Bar: -----
Message-ID-Hash: J6KZBE4KVICXA3IU36G6J7NCDUZUWZAC
X-Message-ID-Hash: J6KZBE4KVICXA3IU36G6J7NCDUZUWZAC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J6KZBE4KVICXA3IU36G6J7NCDUZUWZAC/>
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
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email,amd.com:mid,amd.com:email,shazbot.org:email,linaro.org:email]
X-Rspamd-Queue-Id: E4CF4EA215
X-Rspamd-Action: no action

T24gMS8zMS8yNiAwNjozNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gVGlsbCBub3cgVkZJTyBoYXMgcmVq
ZWN0ZWQgcGlubmVkIGltcG9ydGVycywgbGFyZ2VseSB0byBhdm9pZCBiZWluZyB1c2VkDQo+IHdp
dGggdGhlIFJETUEgcGlubmVkIGltcG9ydGVyIHRoYXQgY2Fubm90IGhhbmRsZSBhIG1vdmVfbm90
aWZ5KCkgdG8gcmV2b2tlDQo+IGFjY2Vzcy4NCj4gDQo+IFVzaW5nIGRtYV9idWZfYXR0YWNoX3Jl
dm9jYWJsZSgpIGl0IGNhbiB0ZWxsIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gcGlubmVkDQo+IGlt
cG9ydGVycyB0aGF0IHN1cHBvcnQgdGhlIGZsb3cgZGVzY3JpYmVkIGluIGRtYV9idWZfaW52YWxp
ZGF0ZV9tYXBwaW5ncygpDQo+IGFuZCB0aG9zZSB0aGF0IGRvbid0Lg0KPiANCj4gVGh1cyBwZXJt
aXQgY29tcGF0aWJsZSBwaW5uZWQgaW1wb3J0ZXJzLg0KPiANCj4gVGhpcyBpcyBvbmUgb2YgdHdv
IGl0ZW1zIElPTU1VRkQgcmVxdWlyZXMgdG8gcmVtb3ZlIGl0cyBwcml2YXRlIGludGVyZmFjZQ0K
PiB0byBWRklPJ3MgZG1hLWJ1Zi4NCj4gDQo+IFJldmlld2VkLWJ5OiBLZXZpbiBUaWFuIDxrZXZp
bi50aWFuQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFsZXggV2lsbGlhbXNvbiA8YWxleEBz
aGF6Ym90Lm9yZz4NCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9A
bnZpZGlhLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL3ZmaW8vcGNpL3ZmaW9fcGNpX2RtYWJ1Zi5j
IHwgMTUgKysrLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAxMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vcGNpL3Zm
aW9fcGNpX2RtYWJ1Zi5jIGIvZHJpdmVycy92ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPiBp
bmRleCA3OGQ0N2UyNjBmMzQuLmE1ZmI4MGUwNjhlZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy92
ZmlvL3BjaS92ZmlvX3BjaV9kbWFidWYuYw0KPiArKysgYi9kcml2ZXJzL3ZmaW8vcGNpL3ZmaW9f
cGNpX2RtYWJ1Zi5jDQo+IEBAIC0yMiwxNiArMjIsNiBAQCBzdHJ1Y3QgdmZpb19wY2lfZG1hX2J1
ZiB7DQo+ICAJdTggcmV2b2tlZCA6IDE7DQo+ICB9Ow0KPiAgDQo+IC1zdGF0aWMgaW50IHZmaW9f
cGNpX2RtYV9idWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQpDQo+
IC17DQo+IC0JcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiAtfQ0KPiAtDQo+IC1zdGF0aWMgdm9pZCB2
ZmlvX3BjaV9kbWFfYnVmX3VucGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1l
bnQpDQo+IC17DQo+IC0JLyogRG8gbm90aGluZyAqLw0KPiAtfQ0KPiAtDQoNClRoaXMgY2h1bmsg
aGVyZSBkb2Vzbid0IHdhbnQgdG8gYXBwbHkgdG8gZHJtLW1pc2MtbmV4dCwgbXkgZWR1Y2F0ZWQg
Z3Vlc3MgaXMgdGhhdCB0aGUgcGF0Y2ggYWRkaW5nIHRob3NlIGxpbmVzIGlzIG1pc3NpbmcgaW4g
dGhhdCB0cmVlLg0KDQpIb3cgc2hvdWxkIHdlIGhhbmRsZSB0aGF0PyBQYXRjaGVzIDEtMyBoYXZl
IGFscmVhZHkgYmVlbiBwdXNoZWQgdG8gZHJtLW1pc2MtbmV4dCBhbmQgSSB3b3VsZCByYXRoZXIg
bGlrZSB0byBwdXNoIHBhdGNoZXMgNC02IHRocm91Z2ggdGhhdCBicmFuY2ggYXMgd2VsbC4NCg0K
SSBjYW4gcmVxdWVzdCBhIGJhY2ttZXJnZSBmcm9tIHRoZSBkcm0tbWlzYy1uZXh0IG1haW50YWlu
ZXJzLCBidXQgdGhlbiB3ZSBjbGVhcmx5IGRvbid0IGdldCB0aGF0IHVwc3RyZWFtIHRoaXMgd2Vl
ay4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiAgc3RhdGljIGludCB2ZmlvX3BjaV9kbWFf
YnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLA0KPiAgCQkJCSAgIHN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQpDQo+ICB7DQo+IEBAIC00Myw2ICszMyw5IEBAIHN0
YXRpYyBpbnQgdmZpb19wY2lfZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwN
Cj4gIAlpZiAocHJpdi0+cmV2b2tlZCkNCj4gIAkJcmV0dXJuIC1FTk9ERVY7DQo+ICANCj4gKwlp
ZiAoIWRtYV9idWZfYXR0YWNoX3Jldm9jYWJsZShhdHRhY2htZW50KSkNCj4gKwkJcmV0dXJuIC1F
T1BOT1RTVVBQOw0KPiArDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+ICANCj4gQEAgLTEwNyw4ICsx
MDAsNiBAQCBzdGF0aWMgdm9pZCB2ZmlvX3BjaV9kbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZikNCj4gIH0NCj4gIA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfYnVmX29w
cyB2ZmlvX3BjaV9kbWFidWZfb3BzID0gew0KPiAtCS5waW4gPSB2ZmlvX3BjaV9kbWFfYnVmX3Bp
biwNCj4gLQkudW5waW4gPSB2ZmlvX3BjaV9kbWFfYnVmX3VucGluLA0KPiAgCS5hdHRhY2ggPSB2
ZmlvX3BjaV9kbWFfYnVmX2F0dGFjaCwNCj4gIAkubWFwX2RtYV9idWYgPSB2ZmlvX3BjaV9kbWFf
YnVmX21hcCwNCj4gIAkudW5tYXBfZG1hX2J1ZiA9IHZmaW9fcGNpX2RtYV9idWZfdW5tYXAsDQo+
IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK

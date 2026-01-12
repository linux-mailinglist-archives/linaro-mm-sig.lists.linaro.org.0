Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 46766D1358A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 15:56:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 511A540141
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 14:56:47 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010020.outbound.protection.outlook.com [52.101.46.20])
	by lists.linaro.org (Postfix) with ESMTPS id 918343F7E4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 14:56:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=KJO7jv7r;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.20 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PXREwUMqKlgH/M/afb8lOyUlCAZrnc3hMBp6qR2gpmRQrIdKyWA6JGoCyAGesaFica+UHeyQyGE6twXcuVPBt7w79+YzBBu2SbhhbS+jaxchvgf1CwuwcVtQqprJKQg/cwaTnYp/gHpYYkEW0sCvrLScZXP7fCuPIskm5X/jiwln0N/d4f6phOX8+M9eua1Y+SQBYpzPRsIOtUtek9CoXaw6QEf1yMzzQVSONjY/2kim8gTalPpDry+KDIUjAsQMmwSCRW1gpsGUlqgw+lehtWHY0R0JzaqXDqzamM3zNaWqusdHnJK5mM0H659H0YTVALH+OpkO+sIys1eHz2oQtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RSPK60YoGahwIv93vY5tyv7YvlL0ESoZun9xjYX6M/Q=;
 b=rczYyn5orGmw4m8e2kv7167a1baXi59kl1cK4w3qTGa3fcHffHajfm84a7muFrdhb9v7cJ9l53+0jMRoI8WSp9l8F0Zfrov3c4bMGmTH8tsGDlmjZWSkCJX/uLEs77LaTK2wETT6ULr+IvoPoGLSGcZ1+pFU0DGwekg0vSOzthH4EyiLjzcldE8+6hUD45AZUA2ZOTFLPWPAcCObTd/0NlYSuC+J3/+lJo0ssiN3lTjMIiyj6IjtZMoVfS9+Jcdm8U3x6fwG8pwm1gGD7BXs2vOZCfoGAFfsF17mU3GUXjGCnV23V1DnruvQr3MGTZ89+2M4v5VDqHIpWvTLBtTW1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RSPK60YoGahwIv93vY5tyv7YvlL0ESoZun9xjYX6M/Q=;
 b=KJO7jv7ro51CSQ0iQNubUFrXM5Bpv+Rot3eRVFvJpUYpQ30S7B2qpsJu4J5iwBhAQfF4K/pHNh0VqTPqdzezYI2IfeYG3WV/99J+2O6OO+Tj/PoYnMGEabc6RmzPS1Q1ZCPufz6GgUTpVG+pdIZ+KDfcFl7mBln3DIiHRoEelxw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB8526.namprd12.prod.outlook.com (2603:10b6:8:163::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 14:56:38 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 14:56:38 +0000
Message-ID: <f7f1856a-44fa-44af-b496-eb1267a05d11@amd.com>
Date: Mon, 12 Jan 2026 15:56:32 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@ziepe.ca>, Simona Vetter <simona.vetter@ffwll.ch>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
 <20260112121956.GE14378@unreal>
 <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
 <20260112141440.GE745888@ziepe.ca>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260112141440.GE745888@ziepe.ca>
X-ClientProxiedBy: FR4P281CA0398.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cf::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB8526:EE_
X-MS-Office365-Filtering-Correlation-Id: eda155c2-f9da-44f0-68cc-08de51eac9cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UDNnVFcrUnRjOVREQk1FTndta1R0azBJNkFqd2JOWGxhZ0JzcEMrQTVLTCt0?=
 =?utf-8?B?eGxQaWtvM0VIZXlXVkZTVlZvbllxcHR3OC9KdlByTmRiKzBGUXMvWGxoYTEr?=
 =?utf-8?B?Y1QwbzZrNkJFVWgwbFlKTlRMYjNtTlpHNlN4VFV4Vndhd05ENTBMeU1EbUhI?=
 =?utf-8?B?S29GbVVRNmZzTTgzc2RGTmZwMlFJYnFVNXJQazl3cmNlMSs4Z0RJWnpKQmNo?=
 =?utf-8?B?ZnZBUVlFUkVBMnRxdEgxVXpTcXl5aVJxZlViMGVEbDJQNkNLaDR2WkpVSnFm?=
 =?utf-8?B?RU9aOUw4YW5oUlZwaTdzNmNlQmJtcmk4YlN6cG9PMUI2b2JrREJLQk1rSkFW?=
 =?utf-8?B?ak5iY0U2UGVBNE1yRHgyMi9aVjNRZkExY2I1VnRrcmNQVzdZRUVlSm9DS3NN?=
 =?utf-8?B?TzloN3U4NTYzT28wQkh6M2IxcXkzVnYzQlJIQklrSGR6eEtYRWJ4STRRckhs?=
 =?utf-8?B?K0N1L0pFQ0E2L0crd256K3oyaVJHeFZLRkQ0UEFDM1owYlkwYVd0SHE1dkdZ?=
 =?utf-8?B?Ky8yYVFzRFhKaHl2Mys3SENTN2JlOHBiVnNYREEyQStwK1J1aXYzRHVhdG5V?=
 =?utf-8?B?MkpJOWJpRWlwbUxsWmQrbnNqbUxTaWFYaDV0L1VKWUxuWVJiQnk0bEVnRGc4?=
 =?utf-8?B?MG9mTmlVTGhHckZXajFWZTk5UGtEQnBFRnFscUllSUZEUlRNam1GSUQzUEt1?=
 =?utf-8?B?Z0NTTWNyc0E0QkJwbm01dzluSzg1bTBhQXlyRmsyRWlYN29OVEt6SloxYkhl?=
 =?utf-8?B?RHhEM01qNmx4NmJoVVBHN2RocHpBYnhIZkNYcXNtTG9wWCt1ZWpOZGZYVVU0?=
 =?utf-8?B?MWViY0pDZk9TR29Sa3pCRXB2YlhSUFFtV1lxb0Z3SXFlL1pUQ0VuRUJOVHY5?=
 =?utf-8?B?OE1ZaGY0MG5CTXNkNWdFeEcyR3BsUVVZRXZYQmlXeXYrUTZPMEZkeTBYUklY?=
 =?utf-8?B?ajRuakVFV2VZSUVjeHNLazJzMzNkd2xLV1QyUnlsMi9YdDgyNnlraWZJT3o5?=
 =?utf-8?B?a01McjZ0WHVOWUEzcVFEZzJWc3FFUmFycUFvNW9BYzlqdTUzN2JsRG1QOW5i?=
 =?utf-8?B?TGxTM2t6Z05IZFRYeXB0TmFZYTZURmE4bU42VDIvZm5KQ3NyTW1sdjdhcWZV?=
 =?utf-8?B?ZFhBMExKc21TR1pseUwxOTU5RFJISHJ4elV3dVZvdktJdjVkakt2dnJvSG16?=
 =?utf-8?B?OUc0aVIwUSs2UHdobWh0a3hGSFZ2eDFMU0lPVW0xM1BRdTBZVzhoNDZPUWNE?=
 =?utf-8?B?WDR6STVqS2RzOWNwUlB4clREQnZuK1ExNjRrTGlwL3lEZ09vYVNxd3BRUXN6?=
 =?utf-8?B?VWhLZTNLMzlVNHdRUzJTdy8zSENtUmYyalNTY3hHcXM2SGRrSWRzalhEbTcx?=
 =?utf-8?B?aWVIakxlVzhTdmpjUHB2K3lsbWdsN0xqcmFna0N2MXlaRnhRalEvc0l0Qjd0?=
 =?utf-8?B?TXBiMm5lcS82SEtUekxZM3Q3cjU3bnpHOG4rb09ZUEdGdTBTSzZEREprKzBs?=
 =?utf-8?B?bEovUldBRDVJY3VISlA2MzFoWmhkdE05Rnd5NHFUQ25FZDJvSThGK3I3djlX?=
 =?utf-8?B?Z2t0b0dCRjQxRGp3WGU4R0pzNm4zWEJwRGMvY1JIWTBrMzc2c0tDY0s3Ukln?=
 =?utf-8?B?RUIyQ3QycTJvQjA0RHFlUExHZksveXdvd1J6ajYwYThINTRnQVhRZHhtZXZs?=
 =?utf-8?B?NzV3cUU3Smlpc3czU21FNEc0eDc3dFRTRjNFTHNEU29QMEhlaWZEVkpucENT?=
 =?utf-8?B?NkNna0x0SXFObzlOZ0d6b2hvd093MFNPRXZDNnhpY2lRUjM2ck5DSlp5MFQ5?=
 =?utf-8?B?SjNwQjdDMm1aalV0ZVdrcHUyc3FMN2JsSmtzYzdNNlJJcGdjYVUydUJNVThs?=
 =?utf-8?B?ZDh0TEJnbjF2alROZWZ3dTU1N0Q1U2VsK0h2RWNvQnlnY1Q0Q1BURzdWWEVw?=
 =?utf-8?B?eithWnNHa3l0R2ZscE5Tc2s5NUdDamNSTFNXbXhONldyeHF0SVRLVjcwalpy?=
 =?utf-8?B?MzFtbDhNTExRPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?akhTOWJXbEdxNGdXV3UxVEpxYjVwamtLWU1ZbmFjV2cwNWF3M1hWR1pFelhj?=
 =?utf-8?B?SzM2REladGN6UWZkdmNRdnUwZ1RpbmdlWllnUnJpd2FIcFJqMk8rdGhvTGFD?=
 =?utf-8?B?TzdZT25ES0lSVGdpbUZSaXBpRjBqOVBVU3lUdG91SFRxZEE2d1pDeXZUcFZj?=
 =?utf-8?B?OUxOeVRWWVlGa0VYbXYzYmVmVG5ZcXRwMlpxSXMxT0xsUktHR1RVVS9iUXZP?=
 =?utf-8?B?S2VxM3llUDB2N2JNSG9BdHJIWmpjSXE4YWUvYXB1ckc0NzJ0aG1jQzFzNVN0?=
 =?utf-8?B?aGh6aldOT255VzNVbkJxV09qbHZMYkI5WGJpZW1SZ2x6cnpxQnBHaEEzRjJT?=
 =?utf-8?B?RTU1ek5QMU5OZGsxOUNTM1dybDdlY2o5Nng4QjBiZFhBdFdmNTg5b3RETVVt?=
 =?utf-8?B?dDV3bzg2dXNkckpsUjRYNEhaUkFDSHcvZlRTRnVVOUpSbXliajBLVjgvYmd5?=
 =?utf-8?B?T2hsRllVbU51clJEUWRtdXZYWk9zc0I0dzQvWmc2YytPTFcwY1BqVnRiRVVk?=
 =?utf-8?B?WDNvU01tdVUyNFpZOHliTUE0TG5TREhpTTkxanBycmFZajBaL0dZRnhwWlpF?=
 =?utf-8?B?aFlTUDdaRXdneGRBcnoxdmFIWno5a0hmUEhmNm9ucGZlSU4ydk4vdGFyL1pv?=
 =?utf-8?B?Q0l1OFRYcitFV3JlVjNsL0N6blF0a1JCRXlOTjVuQkVNVWt2em1XY3V3N05G?=
 =?utf-8?B?UEZ1a29WSGt6akM4WnUycmpKYm8vSWViRjMrSTJ6LzErR3IyazRGY09CNXE4?=
 =?utf-8?B?WjFPeDRzMncvVmxKM0FXVDFOZVF0MUpYVmVrTXAyKzFjNnJ6SldEb3NjNE5v?=
 =?utf-8?B?QWE0K1F0TitTTkpIdXo5RzBWOXgyR0ROaU9xZ3AvdW5aa2U1QVFVQ29WZ3ZW?=
 =?utf-8?B?cjUyQXJTc3FzbXdZalhFbnQ0cTRVYVFySG5vNjhZQWkvZldPRTFiSVRDL2Z6?=
 =?utf-8?B?UlU1VmZSWkphLytxQk9LQktXM0NvVE1KSUVVc2J4eEFBbm9KRkNhc3BkUlhS?=
 =?utf-8?B?eHc4NmYyc3U2NEpEV1V1Sk9UYUZ0cEdjRlQ5RW0xOUc0cStBaG9LazM1ancy?=
 =?utf-8?B?d2NleWUvSml4NGhibUFLMWE5OXI1TUNpT1UzK2tDYXFPb21ueThWci9ZMCtY?=
 =?utf-8?B?UHRzMmZFWUc0TnJoS29VSnRnMndpYTRtZkZEaFhLaFVxSGFKV0F0RVBjekdh?=
 =?utf-8?B?dzEydlRGMlU1SHNzMzFMeHRWMEQxSVYybXBkK1MwK1JtRCtRVHRqSGxxS2tH?=
 =?utf-8?B?cEdNZHhUaDNYRWUwdWZZclp1UmgxUEhyQnc5cWszOGZWeTdFRlpzbVg0V1U0?=
 =?utf-8?B?TXNpMFRBdk5tKzNqOVNRRFNKTWRrbWZBRHM3eTFUVSttNUh4SUs0NEhvZXZu?=
 =?utf-8?B?eUdMeEpRd0dJUXJES0ZON3o0VGNGbGs1Mm5Mck0rakQ5Q1FiOVRBMC9ScWJp?=
 =?utf-8?B?SDBGbEpERkNJbGgzdjU2NGNpWnY3MTAyV0tscnJ5bjJwaW83MnVDVVNqMWNu?=
 =?utf-8?B?SWJ0dzdTODU0T2pUbk51bUZwNG9WcU5sMzFqbDdHcmowUy9Td1g4NkJxNEdY?=
 =?utf-8?B?aGVoN2xDcEZJWmJSNkxHdis5SEtMVHpDRWFVRzYzVGFrS0RUNU9abUZqUEds?=
 =?utf-8?B?NWNMazYvbjdRcHhTZnZOd0JtK0s2QmhSN2FmdGNRdVdXd0h3ME5EY2xYSWdF?=
 =?utf-8?B?M0srS1FHUFpnOHJVUWErWVFoSVRUa2Nha2w1STJhaTN2YVRNSFZyc21JdlY3?=
 =?utf-8?B?RHlVb1dib2wrejVndWNLRGdNTWNLanowK0FRcitNa3M5b3VYS3hTb1JyUkZ6?=
 =?utf-8?B?SHI2eFh1SVRrSEYrRDd6dVVGSzhVUmdMa3d1SEpxVVNYbVZXdS8xOXJMcjFL?=
 =?utf-8?B?alFzbUFVYXRIZzVWR0prODdpNU04Y3EveHdWWEo4S0ErUjlZTVFIM0IvU2Ja?=
 =?utf-8?B?bXg3UldNSGZpSjM2VjZWZ3dxckRnQ2tTdVRWb1NBU0hqWUdDU0NYdm51V0hB?=
 =?utf-8?B?c0x3ZVFRNzMzYk05TXVHdEQxeTZ1d05yNnFNMElnNmdCRlcxY2tsYWVobTVM?=
 =?utf-8?B?NW9VbnlHU0I5QzJDTWZLb0MyZzlmeUJGdHpTNnRraHhQejVjamNDVC84OERn?=
 =?utf-8?B?eTdvS1IycXlhRWp4UWVtWVhiR0w4M0pPWkpldjBLTnJKWDUweHMrR2VRM2hD?=
 =?utf-8?B?TlZXVmhlVi8xQVBCSzhBdzF5anV1SUdmTytuZVZ4YTZLY0d1Nk9XallSbmY1?=
 =?utf-8?B?cDdpYml5WGJtWEFOb3QxQXhIN0QvcjJqWjJWR1VnaXhIM1pzNWthSVNaUDhU?=
 =?utf-8?Q?fovrMIZezKDeZDKhbw?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eda155c2-f9da-44f0-68cc-08de51eac9cf
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 14:56:38.4621
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Whwq1c/yCYbCmiiHcuiuxpEppDWTRfNr8YPodUQhueuipAqZpHM90d6LpjowJXV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8526
X-Rspamd-Queue-Id: 918343F7E4
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[16];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.46.20:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,52.101.46.20:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PD5SO5LISPZBKHDIVBUP2IBGI2RMDV3G
X-Message-ID-Hash: PD5SO5LISPZBKHDIVBUP2IBGI2RMDV3G
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PD5SO5LISPZBKHDIVBUP2IBGI2RMDV3G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xMi8yNiAxNToxNCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOg0KPiBPbiBNb24sIEphbiAx
MiwgMjAyNiBhdCAwMTo1NzoyNVBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
Q2xlYXIgTkFLIHRvIHRoYXQgcGxhbi4gVGhpcyBpcyBub3Qgc29tZXRoaW5nIERNQS1idWYgc2hv
dWxkIG5lZWQgdG8NCj4+IGRlYWwgd2l0aCBhbmQgYXMgZmFyIGFzIEkgY2FuIHNlZSBpcyBpbmNv
bXBhdGlibGUgd2l0aCB0aGUgVUFQSS4NCj4gDQo+IFdlIGhhZCB0aGlzIGRpc2N1c3Npb24gd2l0
aCBTaW1vbmEgYW5kIHlvdSBhIHdoaWxlIGJhY2sgYW5kIHRoZXJlIHdhcw0KPiBhIHByZXR0eSBj
bGVhciBkaXJlY3Rpb24gd2UgbmVlZGVkIHRvIGFkZCBhIHJldm9rZSB0byBzaXQgaW5iZXR3ZWVu
DQo+IHBpbiBhbmQgbW92ZS4gSSB0aGluayBMZW9uIGhhcyBubyBxdWl0ZSBnb3QgdGhlICJkbWFi
dWYgbGluZ28iIGRvd24NCj4gcmlnaHQgdG8gZXhwbGFpbiB0aGlzLg0KDQpJIHdhcyBhbHJlYWR5
IHdvbmRlcmluZyB3aHkgdGhpcyB3YXMgY2xlYXJseSBub3Qgd2hhdCB3ZSBoYXZlIGRpc2N1c3Nl
ZCBiZWZvcmUuDQoNCj4gIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9aNFo0Tktx
VkcyVmJ2OThRQHBoZW5vbS5mZndsbC5sb2NhbC8NCj4gDQo+ICAgIFNpbmNlIHlvdSBtZW50aW9u
IHBpbiBoZXJlLCBJIHRoaW5rIHRoYXQncyBhbm90aGVyIGFzcGVjdCBvZiB0aGUgcmV2b2NhYmxl
DQo+ICAgIHZzIGR5bmFtaWMgcXVlc3Rpb24uIER5bmFtaWMgYnVmZmVycyBhcmUgZXhwZWN0ZWQg
dG8gc29tZXRpbWVzIGp1c3QgbW92ZQ0KPiAgICBhcm91bmQgZm9yIG5vIHJlYXNvbiwgYW5kIGlt
cG9ydGVycyBtdXN0IGJlIGFibGUgdG8gY29wZS4NCj4gDQo+ICAgIEZvciByZWNvdmFibGUgZXhw
b3J0ZXJzL2ltcG9ydGVycyBJJ2QgZXhwZWN0IHRoYXQgbW92ZW1lbnQgaXMgbm90DQo+ICAgIGhh
cHBlbmluZywgbWVhbmluZyBpdCdzIHBpbm5lZCB1bnRpbCB0aGUgc2luZ2xlIHRlcm1pbmFsIHJl
dm9jYXRpb24uIEFuZA0KPiAgICBtYXliZSBJIHJlYWQgdGhlIGt2bSBzdHVmZiB3cm9uZywgYnV0
IGl0IHJlYWRzIG1vcmUgbGlrZSB0aGUgbGF0dGVyIHRvIG1lDQo+ICAgIHdoZW4gY3Jhd2xpbmcg
dGhyb3VnaCB0aGUgcGZuIGNvZGUuDQo+IA0KPiBUaGUgaXNzdWUgaXMgdGhhdCBETUFCVUYgb25s
eSBvZmZlcnMgdHdvIGF0dGFjaG1lbnQgb3B0aW9ucyB0b2RheSwgcGluDQo+IGFuZCBtb3ZlLiBp
b21tdWZkL2t2bSBjYW4gaW1wbGVtZW50IHBpbiwgYnV0IG5vdCBtb3ZlIGJlY2F1c2UgdGhleQ0K
PiBkb24ndCBzdXBwb3J0IGZhdWx0aW5nLg0KPiANCj4gdmZpbyBhbmQgb3RoZXJzIGRvbid0IG5l
ZWQgbW92ZSB3aXRoIGZhdWx0aW5nIGJ1dCB0aGV5IGRvIG5lZWQgcGluDQo+IHdpdGggYSB0ZXJt
aW5hbCwgZW1lcmdlbmN5LCByZXZvY2F0aW9uLg0KDQpZZWFoLCBJIGtub3cgdGhhdCB0aGlzIGlz
IGNvbmZ1c2luZy4gQnV0IHRoYXQgdXNlIGNhc2UgaXMgYWxyZWFkeSBzdXBwb3J0ZWQgYW5kIHdl
IGp1c3QgbmVlZCB0byBwcm9wZXJseSBkb2N1bWVudCB0aGluZ3MuDQoNClRoZSBtb3ZlX25vdGlm
eSBjYWxsYmFjayBjYW4gYmUgY2FsbGVkIGV2ZW4gYWZ0ZXIgcGluKCkgaW4gdGhlIGNhc2Ugb2Yg
UENJZSBob3RwbHVnIGZvciBleGFtcGxlLg0KDQpXZSBjb3VsZCBwb3RlbnRpYWxseSByZW5hbWUg
dGhlIGNhbGxiYWNrIHRvIHNvbWV0aGluZyBsaWtlIGludmFsaWRhdGVfbWFwcGluZ3MuDQoNCkFu
ZCB5ZXMsIEkga25vdyB0aGF0IHdlIGhhZCBhIGZldyBpc3N1ZXMgd2l0aCB0aGF0IGJlY2F1c2Ug
d2UgZGlkbid0IHByb3Blcmx5IGRvY3VtZW50ZWQgdGhpbmdzLi4uDQo+IFRoZSBwdXJwb3NlIG9m
IHJldm9rZSBpcyB0byBhZGQgYSBuZXcgbmVnb3RpYXRlZCBhdHRhY2htZW50IG1vZGUNCj4gYmV0
d2VlbiBleHBvcnRlciBhbmQgaW1wb3J0ZXIgdGhhdCBiZWhhdmVzIHRoZSBzYW1lIGFzIHBpbiB1
cCB1bnRpbA0KPiB0aGUgdXNlciBkb2VzIHNvbWV0aGluZyBjYXRhc3Ryb3BoaWMgKGxpa2UgdWJp
bmQgYSBkcml2ZXIpIHRoZW4gYQ0KPiByZXZva2UgaW52YWxpZGF0aW9uIGlzIHVzZWQgdG8gY2xl
YW4gZXZlcnl0aGluZyB1cCBzYWZlbHkuDQoNCldpdGggb3Igd2l0aCBwaW4oKSB5b3UgbmVlZCB0
byBndWFyYW50ZWUgdG8gdGhlIGltcG9ydGVyIHRoYXQgdGhlIERNQSBhZGRyZXNzIHlvdSBnYXZl
IG91dCBzdGF5IHZhbGlkIHVudGlsIHRoZSBpbXBvcnRlciBoYWQgYSBjaGFuY2UgdG8gZnJlZSB1
cCBpdCdzIG1hcHBpbmdzLg0KDQpJdCBpcyBpbnRlbnRpb25hbGx5IGRvbmUgdGhpcyB3YXkgdG8g
cHJvcGVybHkgc3VwcG9ydCBQQ0llIGhvdCBwbHVnIGJlY2F1c2UgZXZlbiB3aGVuIGEgZGV2aWNl
IGlzIGdvbmUgdGhlIGFkZHJlc3Mgc3BhY2UgY2FuJ3QgYmUgcmUtdXNlZCB1bnRpbCBhbGwgaW1w
b3J0ZXJzIHN0YXRlZCB0aGF0IHRoZXkgc3RvcHBlZCB0aGVpciBETUEuDQoNCj4gWW91IGFyZSBy
aWdodCB0aGF0IHRoZSBleGlzdGluZyBtb3ZlX25vdGlmeSBhbHJlYWR5IG1lZXRzIHRoaXMNCj4g
c2VtYW50aWMsIGFuZCB0b2RheSBWRklPIGV4cG9ydGVyLCBSRE1BIE9EUCBpbXBvcnRlciBldmVu
IGltcGxlbWVudA0KPiB0aGlzLiBVcG9uIFZGSU8gcmV2b2tlIG1vdmVfbm90aWZ5KCkgd2lsbCBp
bnZhbGlkYXRlIGFuZCBtYXAoKSB3aWxsDQo+IGZhaWwuIFJETUEgT0RQIHRoZW4gSFcgZmFpbHMg
YWxsIGZhdWx0cy4NCj4gDQo+IFRoZSBwcm9ibGVtIHJldm9rZSBpcyBkZXNpZ25lZCB0byBzb2x2
ZSBpcyB0aGF0IG1hbnkgaW1wb3J0ZXJzIGhhdmUNCj4gaGFyZHdhcmUgdGhhdCBjYW4gZWl0aGVy
IGJlIERNQSdpbmcgb3IgZmFpbGluZy4gVGhlcmUgaXMgbm8gZmF1bHQNCj4gbWVjaGFuaW1zIHRo
YXQgY2FuIGJlIHVzZWQgdG8gaW1wbGVtZW50IHRoZSBmdWxsICJtb3ZlIGFyb3VuZCBmb3Igbm8N
Cj4gcmVhc29uIiBzZW1hbnRpY3MgdGhhdCBhcmUgaW1wbGllZCBieSBtb3ZlX25vdGlmeS4NCg0K
SW4gdGhpcyBjYXNlIGp1c3QgY2FsbCBkbWFfYnVmX3BpbigpLiBXZSBhbHJlYWR5IHN1cHBvcnQg
dGhhdCBhcHByb2FjaCBmb3IgUkRNQSBkZXZpY2VzIHdoaWNoIGNhbid0IGRvIE9EUC4NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPiBUaHVzIHRoZXkgY2FuJ3QgaW1wbGVtZW50IG1vdmVfbm90
aWZ5IQ0KPiANCj4gUmV2b2tlIGFsbG93cyB0aGlzIGxlc3MgY2FwYWJsZSBIVyB0byBzdGlsbCBi
ZSB1c2FibGUgd2l0aCBleHBvcnRlcnMsDQo+IHNvIGxvbmcgYXMgZXhwb3J0ZXJzIHByb21pc2Ug
b25seSB0byBpc3N1ZSBhbiBpbnZhbGlkYXRpb24gZm9yIGENCj4gInNpbmdsZSB0ZXJtaW5hbCBy
ZXZvY2F0aW9uIi4gV2hpY2ggZG9lcyBuaWNlbHkgbWF0Y2ggdGhlIG5lZWRzIG9mDQo+IGV4cG9y
dGVycyB3aGljaCBhcmUgcHJpbWFyaWx5IHBpbiBiYXNlZC4NCj4gDQo+IElPVyB0aGlzIGlzIGFu
IGVuaGFuY2VtZW50IHRvIHBpbiBtb2RlcyB0byBhZGQgYSB0ZXJtaW5hbCBlcnJvciBjYXNlDQo+
IGludmFsaWRhdGlvbiB0byBwaW5uZWQgYXR0YWNobWVudHMuDQo+IA0KPiBJdCBpcyBub3QgaW50
ZW5kZWQgdG8gYmUgVUFQSSBjaGFuZ2luZywgYW5kIExlb24gaXMgbm90IHRyeWluZyB0byBzYXkN
Cj4gdGhhdCBpbXBvcnRlcnMgaGF2ZSB0byBkcm9wIHRoZWlyIGF0dGFjaG1lbnQuIFRoZSBhdHRh
Y2htZW50IGp1c3QNCj4gYmVjb21lcyBwZXJtYW5lbnRseSBub24tcHJlc2VudC4NCj4gDQo+IEph
c29uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B81BD12A4F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 13:57:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 717923FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 Jan 2026 12:57:39 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010030.outbound.protection.outlook.com [52.101.193.30])
	by lists.linaro.org (Postfix) with ESMTPS id 598163F6E7
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 Jan 2026 12:57:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BHxmYFRb;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.193.30 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vXGIi9h0bWjaH3Qx4FxXpfVZxr2JQEARUES5qhGmheoY7C8e6fCp6fQE3F5pYCVJeP981krYWw64GIKM5wAZEYaXznY3en7m6VdoRDjsQnTrJPSVBZ/15DQ3Ef0byLHtMpKqWq8Wfq+bLciCHq15ynmdQ8/+v2w6GZc2p2MVtvbAZyZdUKokQun3CzPgcmzAwPGuht92MxdRiVh9oDpWtJlLC650YjCcRG+MBtDpdhPD6n6/HhoUJmlORfj138McrH/LvVV9NCpXt2hiDcIiw+CATiD45nz+E5iv7XZGncXNCoWCKyEgfmR6k6V4m7bIqVMcqo38zXhNHiw3YORoyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rLjUNo9dkxzOMTr3V/+okjE/ImbZ3unc7tYC9NfInsg=;
 b=WrrNsV1mWDDI+x0jqFk4mcF+C2DonrfHxbXvkLkwVF/NBu1trrpFhCCyl1wW6aUsHZ6T4Lr81Pq/yeESAQg2eAts0zSmjB+l/2uekIGT9YTYUke/jl4EVt2y25T+Nv1NdsJcmPomGSowPUXRWN/adTY3L9in5/e8OZK6gmEyJ7dY8EqA7KBFC4/a9tVQNQYaa6hlJGz06sU77OdtJmat47uKsVk2YZa2kaVU93EvGo8mcQSulXKVWLxaT8bbkrJ7S8MXVXghlYI7Lz7o45D6zHszfYocFhC6nvuBQnVnsDts+YQaMpLBJhYoHuuwa9to1j8kJ1vVdVWAHSyGAkVQdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLjUNo9dkxzOMTr3V/+okjE/ImbZ3unc7tYC9NfInsg=;
 b=BHxmYFRbYtd3O6VPH5GFvRHNUIL/dbgQFBvapu5rMTNDo+HDvAsEsICgY41p3gZERRb4m/B7JX7piPczw5sY0A8bzM2MD3fDOEMTtvYgfIWX/S9mBoN8D4eKTmtdBSegEko02zsovWchXM9e8yyXcT4cyc7WGyXBh1iM2P0G9d4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB8556.namprd12.prod.outlook.com (2603:10b6:208:452::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 12:57:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 12:57:31 +0000
Message-ID: <2db90323-9ddc-4408-9074-b44d9178bc68@amd.com>
Date: Mon, 12 Jan 2026 13:57:25 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260111-dmabuf-revoke-v1-0-fb4bcc8c259b@nvidia.com>
 <eed9fd4c-ca36-4f6a-af10-56d6e0997d8c@amd.com>
 <20260112121956.GE14378@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260112121956.GE14378@unreal>
X-ClientProxiedBy: BN9PR03CA0169.namprd03.prod.outlook.com
 (2603:10b6:408:f4::24) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: fe66e768-90d3-4482-f2af-08de51da25a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?M3VpN24vTzBlSHBVNEx1U2FHNjB6UkVRdVEwNHJjd3VHMGw5SDlSTEYrZzY0?=
 =?utf-8?B?ZGJFdElJcTN3cGQrQWpIRTMxbkltYjExL0MzYVhSOGNqTUlHa0gzUjdINGh1?=
 =?utf-8?B?UEVMVUhDaFlpamxyRnhkUTRVT3dFajZ0VTY4L214NFZIRE1rR0MrUkE1Z2N3?=
 =?utf-8?B?U0RHWnZNUG9TZVVCOC9sc0wxcHdRUnF3U0JYRSttQ3BEdHd1a0ltUGRkdVVJ?=
 =?utf-8?B?dU54SC9BNnZEaHhMbDk3VzZBL2ZTRjNOb09admFqb2xhak5pa0N0RGxIQnRl?=
 =?utf-8?B?ZXhpWk1CM21xek53bHhnVTlOcVdZbHkxcXo0MWt2bWtNWXdSczBBazE3VGVS?=
 =?utf-8?B?emx2TWRWUE5FNUYvd2RWMlp5aWIweDE1MHdaOVhPRjFCSnVhZXM4MkhuTVNF?=
 =?utf-8?B?cXpsWGJMY2lGMVRDRkIwN21mVWxtT1IzbnlIeEVFZHVCbURnaldEdllITG1T?=
 =?utf-8?B?SjJvODF0R3R3bm50Q3B6YWhYS0JaMlliT3FOWExlL3ExTGFWQW9MSC9CSVNP?=
 =?utf-8?B?aVpwb1pZRlpNOXJ4STFxRGx6WldFb3FVc3ZFMmRmMkVRRHpleXp2U3hmUTZI?=
 =?utf-8?B?bDh2d3ZFblpmMU0zRG9QSTBsbUpTMEpKR1dVb3I3WE5Rc0I5cjVNbkE4dTd3?=
 =?utf-8?B?R0hvc1FVMVJZM3pYZ3hNaWRBL0xlNmRVdnFuU3pTYnpPTUd4M0ZzM1pMVUZx?=
 =?utf-8?B?b29vRGp5QkowMm1PdW5MaGJLM3dtVjMxdDcyU2NYckZmbHFaSERKZWJjS29J?=
 =?utf-8?B?WThxa2NlaTgzR085bEkxQUxMeForc0YycXRoeFU4aUxlRTIxeXhyQk8rMGxl?=
 =?utf-8?B?d3hEeERxMTVTcHpNUlZZQzBKNE1uQ2dlUzNSN2d3QnIrYVBPZWF6NmcxTHRR?=
 =?utf-8?B?NU9CWDJPWDgrZ053R0J3ckVRb3h1ZUJMTG84MmJMZHk5WEJIRzRycUF5cXhC?=
 =?utf-8?B?dTdDbnBxdlBsR2FTcEpFdkhFTEVpMzlmRXU4cnpKSC9CcFJ1RVF6R3NxZ2Ju?=
 =?utf-8?B?WTNkcms0aHQyaGlrY0VHbEJLclZ2K2xjajFIUFM4TUxZNTNPYlMrRTVEdnJL?=
 =?utf-8?B?ZWRxYmplWkY1cGdlMGRYaGxnb0xlQWNUd0grZ3hNd0RDSUErdFBSSkZWekFI?=
 =?utf-8?B?M0VmMExBSXFndkhNclVlOXJ3VkZUT1oyNDUyVVdIT2IzKzcwSjBWRzV2RTlN?=
 =?utf-8?B?cHY4bzF0cEtubklSY1hndDcrNUcwcFk2TTY5dUF2WjBmb01haDJCV3BaT2Vm?=
 =?utf-8?B?YjBjNWk1RU9UWVdENndEZktSMXd6aXlSeW9QcVJ5TlhjRXA4ZGp1VnU5dnhR?=
 =?utf-8?B?ajFQdHF4SGdYV09WR1hhNTdoU1p5VjB0NTBsR05jcGdGZ3FoM3RKaUlqSFRF?=
 =?utf-8?B?Z3dEc2lnazUxR1J0MVJyY0ZtaEQ3RElrb09kYmYxR3JtL0kyTHVua3NISmMr?=
 =?utf-8?B?a0JYSldoTTBGZ280MFFKblNuTGRmYXB0WVpqUHdBUlRkcUttcERsamNza1VK?=
 =?utf-8?B?V3FyS2hKa2Z1a2lzbVkzOUFaZWdiMEFCa1k0Y0N1Vm95UDBWb0FXTWM0alh6?=
 =?utf-8?B?aHNKZ0txVWc5ZmdCaTZWSlVHVm1TVmI0NmZqbWZMTVMxUmxyejJEbWY4c2VS?=
 =?utf-8?B?SnJ1Y3VkRWIxaWxRWkljbk15eXZLdWZKTmRSL0pMS3Z2SWVZR3czYUJXZ1VV?=
 =?utf-8?B?OXlkYlJrYUd4aXF0enRUU3JHZk4zK2V0RmdDVXhLRm1SSDk3ZjE0R0JoUU1n?=
 =?utf-8?B?STVYRmZlQmJuc3dsSmtHRlBHY2xSZ2JmcHF4TjlIQVRQUGxUQmxjdllaVDFG?=
 =?utf-8?B?dGxIYmpZZEgyQ1BJTUFCbHFQSkhUNDk5d21QcnlZUEg3VlczYVhMVjE3czQ0?=
 =?utf-8?B?TjQ5QXVFOGkxMFBOWWdjUGRmcVRFSHpmUVVOeFRLMkNrc0Q0bVgyTCtNUFVI?=
 =?utf-8?B?QzhnZWhCYmFwTWNHTzZ1UUhycGN5d3o4TjdRNmRZRGdiN0ZrQ0VtdUFVQUNs?=
 =?utf-8?B?dFI4TkZMaUt3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2UyemtmN3dFZWVtZ0xPMjgxbS9yZXlodmNoTmJib2tjR2oxWjZTQWpEdDk0?=
 =?utf-8?B?UWFBbmpEd1ZwbDl2ZWQzV1dzcnNFQnNka1ZzWjVjTDJmbnpFSk92WkkvUUE3?=
 =?utf-8?B?YlhVT1VSWHlkeFRvclpvMThvb2dudGpJM3g0cXZhNEIvZXZ1TGZGbjNhQXJ0?=
 =?utf-8?B?cU5zaWlyQXQvdytaM3hvaVQzMVZ5cDZvenNvdmJXSkcyOUpTVlNqbzNQQjFZ?=
 =?utf-8?B?azZiYlhqZ0RFZkl5RFFnNThCUkhMbWlBNzJLSjdndmJ4V0RHbFFDQlhNcGY5?=
 =?utf-8?B?VkxWSk5ta0Zzdm5FNE8xZFRDeU1jZ25haTlIL1A3dHhYdG40U1dDZ0Z6L05k?=
 =?utf-8?B?dTd5N1o3Vk5mNmxXRlo4MXVSSHdiSUQxV0pOdlJZc2RrMWNJbUg5Z2VzUnFH?=
 =?utf-8?B?b2tlNkIvb2NTVldWUEN2dU9YbVZJVlQ4aVVuejVxbEVha1JoL0xkQzVhVDVI?=
 =?utf-8?B?YmdWSUpCZVRxTE9NUkhSOU50dDBqbUZXRlk4SmVTS1U4NXlYL1VrYUR1UDJo?=
 =?utf-8?B?d2RUM0JoRkdKeGRwSEJmMnZVSU1IWjNRWTd5dWl3QXJwcWRzUlhPMmVuN1l2?=
 =?utf-8?B?ZktqT1FXZGRhdnovRSt0MU11L09Zc0h1c2dpai9WZkJCaWwvbkVFSXRzZVA1?=
 =?utf-8?B?NC82RnRNcU1MdFVvYnJOZzJRNlJXZVJla3k3Z2MvbGdkckFqM09Hbk1XVXpM?=
 =?utf-8?B?RkpIQVBOeHQycGdPdmFIR1IrUy9WWnBTSHlhTEhUeFVMRGkvcXVXdTdGQnFH?=
 =?utf-8?B?eUNoK2tncDJBN09CcDcvT3BzNTA2ckZCODlOc0JyMWpUNkh2MTE0eXRKeUxS?=
 =?utf-8?B?SGMrcW4rcHBaVnZkalkxR3ZGQ3FBYVEvWURHNDZsM2Mwa0Q5U0phUW5SVmFL?=
 =?utf-8?B?RzhxaThtQ3JhbXpYU2NyQXQzalk5b24rdFJRZ3BsRDJZUDJNcDkrSTgycHVO?=
 =?utf-8?B?d2JkWXRhWkNDK1cxSVJUcms4ZzQydCtSejlaRkJNZklxOUJzZHFXK3FjSVRI?=
 =?utf-8?B?YTRJREtpRXZLUkVJekRqOCtFd2ptVXhlT1o3RVhqOWhSa0JFVGFiT3JUVXB0?=
 =?utf-8?B?Ui80UEdYdnluVjdSQWdITkdPMEZHdU0rcHJySGpHV3JuODBNUGhwOG9KcktV?=
 =?utf-8?B?UHpsalc2NjZBSFJOV09wL3BvMEJlZTErRmF6dEtpMy9tTEhhUXY3aVQyR1ZO?=
 =?utf-8?B?L1JRdlpKOU4rMzhrL2hSYzZVcStUWGNLYkxoS0ZhWWJvRUwwaFQ2M3Z4eDVH?=
 =?utf-8?B?RUxUUUpBNEJvd3FpSkpsOWdwY2JjWVJHaFpYZUpLWFNBZnlHVXBsVWVtZE92?=
 =?utf-8?B?U2xGRzRqRzFndDVUcDcrcElvUmR3OVJ5QlAxcWZjb3lZY09jcWQxVmF0aGFO?=
 =?utf-8?B?UDBQYUM0bk11dFIvSkJCTVpFSm1TZDNJc3JMbEVwanRJTFNsYWRzVGIxeVVj?=
 =?utf-8?B?RGtpb01ZckFFMEV5cVROM3RCcy9FMDRZcEdJQWtUVHE0ZE1YL0tYenN2cTJr?=
 =?utf-8?B?OENWMDRCNzRNV1p0cTFYVEk2L1lSaEhibXByeVdONzRSSmVwVUM1U1dBdnVP?=
 =?utf-8?B?b3J1TWFCRTVPMHg1eVo4eFIycnUxRFI4NGkvV2lkNjYvSjZaQWlHVWYwalVs?=
 =?utf-8?B?bTVFeHFOaTE1TU4wTXI2WG1JOUYvNDI4VW5OZXFCZisvemRuMnBNOUFTU0V3?=
 =?utf-8?B?d2RVK3ZDOW1MY3pvR0J5NWcxTjZHNndiajVLWFNjVWtpT0RPbGV0MmRLMnYr?=
 =?utf-8?B?R0RCRVpzZ1pSNG1yTS9iTzVJWXFvZjdTdGVmRDZWTTR6Ny84OUhpenkwdXlI?=
 =?utf-8?B?QTZUSzQ1ZFlleHpHcHVBQWxsRkwrT0dmTm1hcmRjTE1TbVBRMHhPLy9uZkVT?=
 =?utf-8?B?bGhzUWVyNlRpbWRvczRSTjN2bEhvNEhtME9taC9xUVV5WTBwQkROblc1Mjcr?=
 =?utf-8?B?WkdBamZpZFVrRExPMHBmVUNwUWlONWUvOXYwcVhTb2FobTRWcmUvZWJ6S1Mw?=
 =?utf-8?B?bHZJY0ZpL09BUmRlV0RVR1E0bzJUOFI3a3ZvK1crOXZYWkRub3JETnRkL2NI?=
 =?utf-8?B?S1hHNm1TZE1wZ0ZBd0t1MWlQUDN2bDl6TXlNRjBEbFloc1B4V3AvYWNtZlBl?=
 =?utf-8?B?elVkRVR6MVlxWkI1LzVHN3JuQzRwcSsybXNyNFh5eHIrL0FxOWRib1ZJZTZQ?=
 =?utf-8?B?MmVneGwvMXZzYUdWQkJlV28vNXJEeC8xNE1FOUhsOTdNblVwTjhEanIzUUlq?=
 =?utf-8?B?UU5oZVcrSkJZWGtySzA1RS9LSVRzN1dSaDZWUEVTclVsOWt3OUltc2grM0JZ?=
 =?utf-8?Q?PxyOoxKmUMFRFWdz3t?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe66e768-90d3-4482-f2af-08de51da25a9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 12:57:31.4820
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t3EuvewG9tqGAwR5tjS5gJsusd9tW4tiIXOmqJY5BqdD+BPcsznqh4JuK/Z862X7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8556
X-Rspamd-Queue-Id: 598163F6E7
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.193.30:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[52.101.193.30:from,2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5YG6WPUUZNJ73JQUI2XJVMFPCYMZECQK
X-Message-ID-Hash: 5YG6WPUUZNJ73JQUI2XJVMFPCYMZECQK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@ziepe.ca>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Williamson <alex@shazbot.org>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/4] dma-buf: add revoke mechanism to invalidate shared buffers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5YG6WPUUZNJ73JQUI2XJVMFPCYMZECQK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xMi8yNiAxMzoxOSwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBNb24sIEphbiAx
MiwgMjAyNiBhdCAxMTowNDozOEFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8xMS8yNiAxMTozNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IFRoaXMgc2VyaWVz
IGltcGxlbWVudHMgYSBkbWEtYnVmIOKAnHJldm9rZeKAnSBtZWNoYW5pc206IHRvIGFsbG93IGEg
ZG1hLWJ1Zg0KPj4+IGV4cG9ydGVyIHRvIGV4cGxpY2l0bHkgaW52YWxpZGF0ZSAo4oCca2lsbOKA
nSkgYSBzaGFyZWQgYnVmZmVyIGFmdGVyIGl0IGhhcw0KPj4+IGJlZW4gZGlzdHJpYnV0ZWQgdG8g
aW1wb3J0ZXJzLCBzbyB0aGF0IGZ1cnRoZXIgQ1BVIGFuZCBkZXZpY2UgYWNjZXNzIGlzDQo+Pj4g
cHJldmVudGVkIGFuZCBpbXBvcnRlcnMgcmVsaWFibHkgb2JzZXJ2ZSBmYWlsdXJlLg0KPj4NCj4+
IFdlIGFscmVhZHkgaGF2ZSB0aGF0LiBUaGlzIGlzIHdoYXQgdGhlIG1vdmVfbm90aWZ5IGlzIGFs
bCBhYm91dC4NCj4+DQo+Pj4gVG9kYXksIGRtYS1idWYgZWZmZWN0aXZlbHkgcHJvdmlkZXMg4oCc
aWYgeW91IGhhdmUgdGhlIGZkLCB5b3UgY2FuIGtlZXAgdXNpbmcNCj4+PiB0aGUgbWVtb3J5IGlu
ZGVmaW5pdGVseS7igJ0gVGhhdCBhc3N1bXB0aW9uIGJyZWFrcyBkb3duIHdoZW4gYW4gZXhwb3J0
ZXIgbXVzdA0KPj4+IHJlY2xhaW0sIHJlc2V0LCBldmljdCwgb3Igb3RoZXJ3aXNlIHJldGlyZSBi
YWNraW5nIG1lbW9yeSBhZnRlciBpdCBoYXMgYmVlbg0KPj4+IHNoYXJlZC4gQ29uY3JldGUgY2Fz
ZXMgaW5jbHVkZSBHUFUgcmVzZXQgYW5kIHJlY292ZXJ5IHdoZXJlIG9sZCBhbGxvY2F0aW9ucw0K
Pj4+IGJlY29tZSB1bnNhZmUgdG8gYWNjZXNzLCBtZW1vcnkgZXZpY3Rpb24vb3ZlcmNvbW1pdCB3
aGVyZSBiYWNraW5nIHN0b3JhZ2UNCj4+PiBtdXN0IGJlIHdpdGhkcmF3biwgYW5kIHNlY3VyaXR5
IG9yIGlzb2xhdGlvbiBzaXR1YXRpb25zIHdoZXJlIGNvbnRpbnVlZCBhY2Nlc3MNCj4+PiBtdXN0
IGJlIHByZXZlbnRlZC4gV2hpbGUgZHJpdmVycyBjYW4gc29tZXRpbWVzIGFwcHJveGltYXRlIHRo
aXMgd2l0aA0KPj4+IGV4cG9ydGVyLXNwZWNpZmljIGZlbmNpbmcgYW5kIHBvbGljeSwgdGhlcmUg
aXMgbm8gY29yZSBkbWEtYnVmIHN0YXRlIHRyYW5zaXRpb24NCj4+PiB0aGF0IGNvbW11bmljYXRl
cyDigJx0aGlzIGJ1ZmZlciBpcyBubyBsb25nZXIgdmFsaWQ7IGZhaWwgYWNjZXNz4oCdIGFjcm9z
cyBhbGwNCj4+PiBhY2Nlc3MgcGF0aHMuDQo+Pg0KPj4gSXQncyBub3QgY29ycmVjdCB0aGF0IHRo
ZXJlIGlzIG5vIERNQS1idWYgaGFuZGxpbmcgZm9yIHRoaXMgdXNlIGNhc2UuDQo+Pg0KPj4+IFRo
ZSBjaGFuZ2UgaW4gdGhpcyBzZXJpZXMgaXMgdG8gaW50cm9kdWNlIGEgY29yZSDigJxyZXZva2Vk
4oCdIHN0YXRlIG9uIHRoZSBkbWEtYnVmDQo+Pj4gb2JqZWN0IGFuZCBhIGNvcnJlc3BvbmRpbmcg
ZXhwb3J0ZXItdHJpZ2dlcmVkIHJldm9rZSBvcGVyYXRpb24uIE9uY2UgYSBkbWEtYnVmDQo+Pj4g
aXMgcmV2b2tlZCwgbmV3IGFjY2VzcyBwYXRocyBhcmUgYmxvY2tlZCBzbyB0aGF0IGF0dGVtcHRz
IHRvIERNQS1tYXAsIHZtYXAsIG9yDQo+Pj4gbW1hcCB0aGUgYnVmZmVyIGZhaWwgaW4gYSBjb25z
aXN0ZW50IHdheS4NCj4+Pg0KPj4+IEluIGFkZGl0aW9uLCB0aGUgc2VyaWVzIGFpbXMgdG8gaW52
YWxpZGF0ZSBleGlzdGluZyBhY2Nlc3MgYXMgbXVjaCBhcyB0aGUga2VybmVsDQo+Pj4gYWxsb3dz
OiBkZXZpY2UgbWFwcGluZ3MgYXJlIHRvcm4gZG93biB3aGVyZSBwb3NzaWJsZSBzbyBkZXZpY2Vz
IGFuZCBJT01NVXMgY2Fubm90DQo+Pj4gY29udGludWUgRE1BLg0KPj4+DQo+Pj4gVGhlIHNlbWFu
dGljcyBhcmUgaW50ZW50aW9uYWxseSBzaW1wbGU6IHJldm9rZSBpcyBhIG9uZS13YXksIHBlcm1h
bmVudCB0cmFuc2l0aW9uDQo+Pj4gZm9yIHRoZSBsaWZldGltZSBvZiB0aGF0IGRtYS1idWYgaW5z
dGFuY2UuDQo+Pj4NCj4+PiBGcm9tIGEgY29tcGF0aWJpbGl0eSBwZXJzcGVjdGl2ZSwgdXNlcnMg
dGhhdCBuZXZlciBpbnZva2UgcmV2b2tlIGFyZSB1bmFmZmVjdGVkLA0KPj4+IGFuZCBleHBvcnRl
cnMgdGhhdCBhZG9wdCBpdCBnYWluIGEgY29yZS1zdXBwb3J0ZWQgZW5mb3JjZW1lbnQgbWVjaGFu
aXNtIHJhdGhlcg0KPj4+IHRoYW4gcmVseWluZyBvbiBhZCBob2MgZHJpdmVyIGJlaGF2aW9yLiBU
aGUgaW50ZW50IGlzIHRvIGtlZXAgdGhlIGludGVyZmFjZQ0KPj4+IG1pbmltYWwgYW5kIGF2b2lk
IGltcG9zaW5nIHBvbGljeTsgdGhlIHNlcmllcyBwcm92aWRlcyB0aGUgbWVjaGFuaXNtIHRvIHRl
cm1pbmF0ZQ0KPj4+IGFjY2Vzcywgd2l0aCBwb2xpY3kgcmVtYWluaW5nIGluIHRoZSBleHBvcnRl
ciBhbmQgaGlnaGVyLWxldmVsIGNvbXBvbmVudHMuDQo+Pg0KPj4gQXMgZmFyIGFzIEkgY2FuIHNl
ZSB0aGF0IHBhdGNoIHNldCBpcyBjb21wbGV0ZWx5IHN1cGVyZmx1b3VzLg0KPj4NCj4+IFRoZSBt
b3ZlX25vdGlmeSBtZWNoYW5pc20gaGFzIGJlZW4gaW1wbGVtZW50ZWQgZXhhY3RseSB0byBjb3Zl
ciB0aGlzIHVzZSBjYXNlIGFuZCBpcyBpbiB1c2UgZm9yIGEgY291cGxlIG9mIHllYXJzIG5vdy4N
Cj4+DQo+PiBXaGF0IGV4YWN0bHkgaXMgbWlzc2luZz8NCj4gDQo+IEZyb20gd2hhdCBJIGNhbiB0
ZWxsLCB0aGUgbWlzc2luZyBwaWVjZSBpcyB3aGF0IGhhcHBlbnMgYWZ0ZXIgLm1vdmVfbm90aWZ5
KCkNCj4gaXMgY2FsbGVkLiBBY2NvcmRpbmcgdG8gdGhlIGRvY3VtZW50YXRpb24sIHRoZSBleHBv
cnRlciByZW1haW5zIHZhbGlkLCBhbmQNCj4gdGhlIGltcG9ydGVyIGlzIGV4cGVjdGVkIHRvIHJl
Y3JlYXRlIGFsbCBtYXBwaW5ncy4NCj4gDQo+IGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oOg0KPiAg
IDQ3MSAgICAgICAgICAqIE1hcHBpbmdzIHN0YXkgdmFsaWQgYW5kIGFyZSBub3QgZGlyZWN0bHkg
YWZmZWN0ZWQgYnkgdGhpcyBjYWxsYmFjay4NCj4gICA0NzIgICAgICAgICAgKiBCdXQgdGhlIERN
QS1idWYgY2FuIG5vdyBiZSBpbiBhIGRpZmZlcmVudCBwaHlzaWNhbCBsb2NhdGlvbiwgc28gYWxs
DQo+ICAgNDczICAgICAgICAgICogbWFwcGluZ3Mgc2hvdWxkIGJlIGRlc3Ryb3llZCBhbmQgcmUt
Y3JlYXRlZCBhcyBzb29uIGFzIHBvc3NpYmxlLg0KPiAgIDQ3NCAgICAgICAgICAqDQo+ICAgNDc1
ICAgICAgICAgICogTmV3IG1hcHBpbmdzIGNhbiBiZSBjcmVhdGVkIGFmdGVyIHRoaXMgY2FsbGJh
Y2sgcmV0dXJucywgYW5kIHdpbGwNCj4gICA0NzYgICAgICAgICAgKiBwb2ludCB0byB0aGUgbmV3
IGxvY2F0aW9uIG9mIHRoZSBETUEtYnVmLg0KPiANCj4gQ2FsbCB0byBkbWFfYnVmX21vdmVfbm90
aWZ5KCkgZG9lcyBub3QgcHJldmVudCBuZXcgYXR0YWNobWVudHMgdG8gdGhhdA0KPiBleHBvcnRl
ciwgd2hpbGUgInJldm9rZSIgZG9lcy4gSW4gdGhlIGN1cnJlbnQgY29kZSwgdGhlIGltcG9ydGVy
IGlzIG5vdCBhd2FyZQ0KPiB0aGF0IHRoZSBleHBvcnRlciBubyBsb25nZXIgZXhpc3RzIGFuZCB3
aWxsIGNvbnRpbnVlIGNhbGxpbmcNCj4gZG1hX2J1Zl9tYXBfYXR0YWNobWVudCgpLg0KDQpZZWFo
IGFuZCB0aGF0IGlzIHBlcmZlY3RseSBpbnRlbnRpb25hbC4NCg0KPiBJbiBzdW1tYXJ5LCB0aGUg
Y3VycmVudCBpbXBsZW1lbnRhdGlvbiBhbGxvd3MgYSBzaW5nbGUgLmF0dGFjaCgpIGNoZWNrIGJ1
dA0KPiBwZXJtaXRzIG11bHRpcGxlIC5tYXBfZG1hX2J1ZigpIGNhbGxzLiBXaXRoICJyZXZva2Ui
LCB3ZSBnYWluIHRoZSBhYmlsaXR5IHRvDQo+IGJsb2NrIGFueSBzdWJzZXF1ZW50IC5tYXBfZG1h
X2J1ZigpIG9wZXJhdGlvbnMuDQoNCkNsZWFyIE5BSyB0byB0aGF0IHBsYW4uIFRoaXMgaXMgbm90
IHNvbWV0aGluZyBETUEtYnVmIHNob3VsZCBuZWVkIHRvIGRlYWwgd2l0aCBhbmQgYXMgZmFyIGFz
IEkgY2FuIHNlZSBpcyBpbmNvbXBhdGlibGUgd2l0aCB0aGUgVUFQSS4NCg0KSWYgYSBETUEtYnVm
IGNhbiBubyBsb25nZXIgYmUgYXR0YWNoZWQgb3IgbWFwcGVkIHRoZW4gdGhlIHJlbGV2YW50IGNh
bGxiYWNrcyBqdXN0IG5lZWQgdG8gcmV0dXJuIGFuIGVycm9yIGNvZGUuDQoNCkV4aXN0aW5nIG1h
cHBpbmdzIGNhbiBiZSBpbnZhbGlkYXRlZCB3aXRoIHRoZSBtb3ZlX25vdGlmeSBjYWxsYmFjayBh
bmQgdGhhdCBmdW5jdGlvbmFsaXR5IHNob3VsZCBiZSBzdWZmaWNpZW50IHRvIHByZXZlbnQgaW1w
b3J0ZXJzIGZyb20gYWNjZXNzaW5nIHRoZSBiYWNraW5nIHN0b3JlLg0KDQpFeGlzdGluZyBhdHRh
Y2htZW50cyBzaG91bGQgc3RheSBhcm91bmQgdW50aWwgdGhlIGltcG9ydGVyIGRyb3BzIHRoZWly
IHVzYWdlLg0KDQpJbiBvdGhlciB3b3JkcyB0aGUgZXhwb3J0ZXIgY2FuJ3QgZm9yY2UgYW4gaW1w
b3J0ZXIgdG8gZHJvcCB0aGVpciBhdHRhY2htZW50cywgdGhhdCB3b3VsZCBiZSBhIHZpb2xhdGlv
biBvZiB0aGUgVUFQSS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gTWFpbiB1c2Ug
Y2FzZSBpcyBWRklPIGFzIGV4cG9ydGVyIGFuZCBJT01NVUZEIGFzIGltcG9ydGVyLg0KPiANCj4g
VGhhbmtzDQo+IA0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+DQo+Pj4g
QlRXLCBzZWUgdGhpcyBtZWdhdGhyZWFkIFsxXSBmb3IgYWRkaXRpb25hbCBjb250ZXh0LiAgDQo+
Pj4gSXJvbmljYWxseSwgaXQgd2FzIHBvc3RlZCBleGFjdGx5IG9uZSB5ZWFyIGFnby4NCj4+Pg0K
Pj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTAxMDcxNDI3MTkuMTc5NjM2
LTIteWlsdW4ueHVAbGludXguaW50ZWwuY29tLw0KPj4+DQo+Pj4gVGhhbmtzDQo+Pj4NCj4+PiBD
YzogbGludXgtcmRtYUB2Z2VyLmtlcm5lbC5vcmcNCj4+PiBDYzogbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZw0KPj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4+PiBDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPj4+IENjOiBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcNCj4+PiBDYzoga3ZtQHZnZXIua2VybmVsLm9yZw0KPj4+IENjOiBpb21t
dUBsaXN0cy5saW51eC5kZXYNCj4+PiBUbzogSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+
DQo+Pj4gVG86IExlb24gUm9tYW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPg0KPj4+IFRvOiBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4+IFRvOiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4gVG86IEFsZXggV2lsbGlhbXNvbiA8
YWxleEBzaGF6Ym90Lm9yZz4NCj4+PiBUbzogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5j
b20+DQo+Pj4gVG86IEpvZXJnIFJvZWRlbCA8am9yb0A4Ynl0ZXMub3JnPg0KPj4+IFRvOiBXaWxs
IERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPg0KPj4+IFRvOiBSb2JpbiBNdXJwaHkgPHJvYmluLm11
cnBoeUBhcm0uY29tPg0KPj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxs
ZW9ucm9AbnZpZGlhLmNvbT4NCj4+PiAtLS0NCj4+PiBMZW9uIFJvbWFub3Zza3kgKDQpOg0KPj4+
ICAgICAgIGRtYS1idWY6IEludHJvZHVjZSByZXZva2Ugc2VtYW50aWNzDQo+Pj4gICAgICAgdmZp
bzogVXNlIGRtYS1idWYgcmV2b2tlIHNlbWFudGljcw0KPj4+ICAgICAgIGlvbW11ZmQ6IFJlcXVp
cmUgRE1BQlVGIHJldm9rZSBzZW1hbnRpY3MNCj4+PiAgICAgICBpb21tdWZkL3NlbGZ0ZXN0OiBS
ZXVzZSBkbWEtYnVmIHJldm9rZSBzZW1hbnRpY3MNCj4+Pg0KPj4+ICBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jICAgICAgICAgIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tDQo+Pj4gIGRyaXZlcnMvaW9tbXUvaW9tbXVmZC9wYWdlcy5jICAgICAgfCAgMiArLQ0KPj4+
ICBkcml2ZXJzL2lvbW11L2lvbW11ZmQvc2VsZnRlc3QuYyAgIHwgMTIgKysrKy0tLS0tLS0tDQo+
Pj4gIGRyaXZlcnMvdmZpby9wY2kvdmZpb19wY2lfZG1hYnVmLmMgfCAyNyArKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4+PiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICAgICAgICB8
IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgNSBmaWxlcyBjaGFuZ2Vk
LCA3NCBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkNCj4+PiAtLS0NCj4+PiBiYXNlLWNv
bW1pdDogOWFjZTQ3NTNhNTIwMmIwMjE5MWQ1NGU5ZmRmN2Y5ZTNkMDJiODVlYg0KPj4+IGNoYW5n
ZS1pZDogMjAyNTEyMjEtZG1hYnVmLXJldm9rZS1iOTBlZjE2ZTQyMzYNCj4+Pg0KPj4+IEJlc3Qg
cmVnYXJkcywNCj4+PiAtLSAgDQo+Pj4gTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNv
bT4NCj4+Pg0KPj4NCj4+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKmIDV0YmGki/wIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 09:16:29 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A955D165913
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 09:16:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EFBF401F8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Feb 2026 08:16:27 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011051.outbound.protection.outlook.com [40.93.194.51])
	by lists.linaro.org (Postfix) with ESMTPS id C03883F7F2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Feb 2026 08:16:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ZVg8Pwo4;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wxu6en2UU7963EQAKwx88U+g1PESTp/E5xX0SBtN+HwMBFotmVCfjM0i9cl6EBWzsbeyCTLDOwOtvxroTW3oZj7Wup3ttCLxazKsVP/TVWfO2lvN3FZEpy9PLmjukJV0Nf5ryyA6435WtJVLnpfgAXs5e5LviuaMu8/RcGSsLKIJNrVPgsilYJYwKzIDz220O6HOzYEySf0Q+mDT6yGVGCIB8BU073jkzFa9noqIPmkLltC6q+y9zlHivV2pg+/2R5TwsCo3e3zwgbNg91bpItn1mruNLt6+nSlB1J77C4IXqnIp+2ZQtk1nPGnlWDSzRZXHRGVmEmMHqridNS7Wug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zM9D+9LALR47xbjCtwNGkGM7vWrb6dVpZplY2410FM8=;
 b=Wdk3eEPnUalnZmBHDB1ZwPE4XAqYNyzFxMH4IjtQSQr3aXfUfMssr/DsMvAtdY6P8a3MYitzdblg/WvmDT/Pa3tCn9vdltJXoSc+1p9/EumlIDK1zUdCCMBzUSs9zHzya7/tji/14JOYKiOU/XL58tf/AsOVE/oILdm9zE4F7x7Fwap4JmuzDH9+JSL6tKtost3C7jYO1sc1GJr20kRNwk2pxTYUvW1ipkZnhHOY5s345y/qfgC+gqQXoB4m/zInY+6izVCwlarinUbnh0Oa7H7lOuX8E+QtaMkkB5qbKW+FXIAf9g6SIh459qoqNEZ2e9mU9zZ08xy5VWzUnzvB4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zM9D+9LALR47xbjCtwNGkGM7vWrb6dVpZplY2410FM8=;
 b=ZVg8Pwo4g+VGyyqT9J+pswE1Be94ylTiHUyKbZkNQAYoEmeVcwaUtb8w1/2xc9jw2GzzgTX+BHTTXfekL45gG4eEvvX6YV/ijeh9v4PNFiizpab25fxD1KVBRWhUw3oeTCLqCm1icqU1tFtCu+KQWE2HR5FrHHj5SRpYEMVcuKE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY1PR12MB9560.namprd12.prod.outlook.com (2603:10b6:930:fd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 20 Feb
 2026 08:16:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9632.015; Fri, 20 Feb 2026
 08:16:23 +0000
Message-ID: <0ff02d77-13e8-4b2c-b714-38037595d535@amd.com>
Date: Fri, 20 Feb 2026 09:16:15 +0100
User-Agent: Mozilla Thunderbird
To: Eric Chanudet <echanude@redhat.com>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <20260218-dmabuf-heap-cma-dmem-v2-3-b249886fb7b2@redhat.com>
 <435330fd-ecdd-43c7-8527-f285c03c6421@amd.com> <aZdAOMBRdRw59fa0@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aZdAOMBRdRw59fa0@fedora>
X-ClientProxiedBy: FR4P281CA0180.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY1PR12MB9560:EE_
X-MS-Office365-Filtering-Correlation-Id: 82bcc803-8acd-46e8-5bbe-08de705855ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?LzBTSERZdUhkUk9tUkx3cE9zdGh1cTd0bUF0amZaeXhYd1F0a1ZxRXozUTZE?=
 =?utf-8?B?VVh6cDlhdzV0SitJYzEvK0dXa2l6OGVYL1liRjNhMEpBNldiZWQvdW4zZXVo?=
 =?utf-8?B?OG9aNFg0MHNyUmRGbVRIb0Z4MUY1RGhiWDBnQlZhNmlaeGpuUWFWR1EvMDBj?=
 =?utf-8?B?V3JGQXhpWEZFQzZ4WHhxZEVmTm14RzNBTHFLUUZCLzEvaGlXN09ZTEhjNDln?=
 =?utf-8?B?TGVKOTJBZ21qaFdtbGdJVFVRKzVBcTArcVFoOUlSWDNUakU5cnVrMi9DRGg1?=
 =?utf-8?B?WkJvSGkvVXdJSXdGbW54NzBnVEszUUxpKzhrV2hlZUxLbUsxNHYvVmMzOEdF?=
 =?utf-8?B?NUpCS0RxLzBNODVhK3pzclFJZmViTVZyTDFDNjBqaUJKYktySUs4YndmV0dm?=
 =?utf-8?B?RFZ5UGQ2aDZmSCtrUEFZT2lDWStnakU3dFdGZjFUdFlRaTYxRlVRZXFhV2NG?=
 =?utf-8?B?TUl1ZkhlSXU1bXBiOWgxK2JHTjBYUnVRZzdLT1VuOEVWZ0ZwN3hTeHBubDVm?=
 =?utf-8?B?dzl0b2Zjcng2OXdEaDFEWEx3L1pVK1NoTW1ZT2V5OTFYTkRhVWdqSCtkM3Q1?=
 =?utf-8?B?ekVvQkczV01rSlJLeXZwV1pyWk9BV0dqY3djZDNNaW5FTTBTQnNScXowNXVE?=
 =?utf-8?B?QzRIS0o1MWlMWGhxTVVyczk5RGFST2Jqcno1ZVlQNUJzSHh4WVJVQTlxWWwr?=
 =?utf-8?B?VHZ1R0cyNm43cnlyL0t5YU9oV0haQ2k2U2V0TjNwTk8zQm9FU1NWb1JSa1cv?=
 =?utf-8?B?VVNtaDl1NGNhRGZjalp5QkZDS1FNZ2ZicTRadXdtZEc2b2FNdEpVUE5ua25x?=
 =?utf-8?B?dG1NVUVhL0RLT25PVGMwMVc2alNLYThRQ0pUbEZRMEkzWE1SRTdmd3NVNmlN?=
 =?utf-8?B?OTF4U3V4K3ljRDhRNmlxMk1ZWU9ZM3lQcU85TlBwRmJReFl3YXpQTDR4VkIv?=
 =?utf-8?B?eDhwRjZNbFcxOXkvUzFENnhGYzFhZlViK1lrbGM4T0NYMWxwU3pjN1gxZlFB?=
 =?utf-8?B?SHY5R1hnQzNrVnI4SWZveEZ1OWt6bGV5MUh1Z0EwYWF0S05IcXhqNU9wQUdk?=
 =?utf-8?B?aW9VcGdzVlpTbjBWNTVpRFUwTnZNVmxRaW4zZHJDVFowV1ptTk5wV25MViti?=
 =?utf-8?B?WTJQdFIzT1lpbEp0cElwUWUxY3czMUp1aS9FU0sxT1hSRE1aSUpCNXJ2VlE3?=
 =?utf-8?B?K0p2SEhDUW9SNTNkQ0FoL3N1RzNVMmZDcm0xSTNQSHZTVVhYR3ZzZk5tMjF3?=
 =?utf-8?B?cC84OXdQL2ZhL3NQeEJNbUNNQjdvQ2M3blVIRzBCamVwcTNRS0twTFlVY3N6?=
 =?utf-8?B?TWZlZlVvaWxCNjNBemlKK3JKR2FKaUY5T0RvZnVwc0UrS2VySVpTbUpFWUhF?=
 =?utf-8?B?SzhsMEVNbjhRL05FVjd1U2h6WUJ2ajBHUllUNnlYaDNSKzJBeWttemVOcENV?=
 =?utf-8?B?WUxDUXJDQUdoUVIwT0o4ZzloYkNjU2J3c25vcXBWcUFSbmpyZ3hUM2xQczF4?=
 =?utf-8?B?ZEluZUk2TEtGTDZGcjViVkVGcWo2UkJNNlNzMGJueGxpY2tWVTFJMkQ5V045?=
 =?utf-8?B?U3p0eHRtSUszb0x1UDhvWk5ESVpoaVR5TlZtMnUydlpidHFsSGtXVENYU3VZ?=
 =?utf-8?B?Qmg0WkJZdU1JdzBMcjlrZ3ZLcjNxYjhIVEdsWHN4MlRKNmJTb2QwYzRTWTVt?=
 =?utf-8?B?NmViaXR0OGZ6T3EvOUZXTTJRZDZZamR2OXc5cVpxOWw5OURYYjVSMkswQ1Nh?=
 =?utf-8?B?Z2V2clhod0U1cGJuYnJROTdXOUhwd0tzZHlCck5zTTF0VUNQMkFneCt6ZVd3?=
 =?utf-8?B?TndGSTM2VzMwMW5FOUU2dStyckNnaWdDaWgvOGhPSDBTcDFOZkRGSnVjS3Ni?=
 =?utf-8?B?QzVadEZkZ0ZBaVhFRlBxUnAvWVFVWXh0RFVPc3RDeFpuS0pOdm9UeUhPdVFy?=
 =?utf-8?B?TEpUZUdoZDVsak9BRUU4MEFCdjU3cGpNeUNmcTc1NjJpcXBMR1lpaEcyMElx?=
 =?utf-8?B?RjB3eC9VWnVQd2VEeXFXTnZwNGdoanRwMUhOSndqUnRwU1dkQUI0TnpRNEZr?=
 =?utf-8?B?TkhrdVdPUjE4bUJodUlTZzlnWDFoMC81aFR4cVJTYzFYRTA5b3dQaWVjS0hl?=
 =?utf-8?Q?FWLg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UTRmZ21KbXJ6RXpHQVROcGdkOE55UTZsOFFQTkI3VGZoeWREb1dPVnY2Ty9M?=
 =?utf-8?B?SmxwMlRYMGV6TGthQzQwSkVpVk85bll5Y0JUK0RmdWlHK2NPQnlia3Z4azlE?=
 =?utf-8?B?QVFlYzF1djd3T05pVzlvSEZEQU9iOWhacXd0M3M3OTNpa0xGbUl5bDh5amdN?=
 =?utf-8?B?T3FwWldSeFNVZ2VPOVF3dUFXaDcvMlNPVXhVOHQwSkV6cEl6UGNLRDRFN24v?=
 =?utf-8?B?bldIZzJmTEhHVHRVdHFTT095cjNUUjZVRXZEd2Z1THF5bkcvbkIyNjFjUlh3?=
 =?utf-8?B?QWluaGxNR3o4S2crMVU3bllxKzVHazY4V2lUZ0ZkanVIOHFYWUZnbFp6dnVw?=
 =?utf-8?B?V2FhVHlWZktITkNMRWlDRVB2aDNMYU5rMmhqOEVabTd4YkFrMjBqdmdYOFI1?=
 =?utf-8?B?TGZhSExmK0hjdTlrYWtjb2tGblhLd0xGMU5vMHVLSkVlNUZKZSs3cmZYcmhi?=
 =?utf-8?B?ZVRxSjRZWTZITnRza3FNVStJdUZrQitpRmZnUENuZTZ3REFoRXR3QmpOUEp0?=
 =?utf-8?B?RHhYNGVVcXJsUThMRWFVUjZ6YTNGUHhIRU5lS0R4UzVEdEE3ZVROWHZFYTFu?=
 =?utf-8?B?SDRXMGVlKzZ1WFh5bEY2UUxpbGFsSUROSFF6dG8yZnBKelp4V1YwT3ZicUw1?=
 =?utf-8?B?b2NQTkFJR3Yzb0ttMlhUTkUyUFJVUXl6ZFhMd0tMKzV5cTlZYWFEZnhqcnNi?=
 =?utf-8?B?UHdyMDBCVWVoN3NEMHVGL2NoeE1kcFhyTU1JNysvLzNFdnVQekI2SnJEb1Nw?=
 =?utf-8?B?c0I4WGQ0TEV0b09UUS9Rd2Vib0pabms4c2NkWTZzc0MwM3ZubzU0SDBJR0hQ?=
 =?utf-8?B?bnc5TE11anhhYnZKOTJ4NVVjb2RmZm44MkxVeEdUM2tiYUY2SlJQeW13OVN4?=
 =?utf-8?B?c01aMWQ2UmU0dmtMaHBxeWtYUlV4bVArZExxaTRDb3hMTyszcTM5VWVmRFU3?=
 =?utf-8?B?akZtQmxQbnZkVEhnTHJ6aG9sNTh5UUh3ZGt3NGFrdENZM0MwTmp1eWhSTGlT?=
 =?utf-8?B?S0JQKzBWRXJ0T09DdE1JbUVvblFNNzMrN1ZFUjFYV04wTFZ0TTVIOGV3V2wy?=
 =?utf-8?B?WnYxeGc1bFlxZFJPOVN3TFZmR3RGRy9kazk0ak0zVkUwaTh0ZHBRKy82RXli?=
 =?utf-8?B?NTNIc1pUUWlTSitVUytIU0RqOUxsaUpMR0ZlUlFEbllIRnVjUGVBWXg2R2p4?=
 =?utf-8?B?M08zUlNrQWZzR0JlcGh4RnhLRkwwV1lCMitWa2VldUFhcnB4N01SYVlyVWFu?=
 =?utf-8?B?QU9KNDFMK3A4bktjMHlUa3E5Mm9YWjBPU3JpdXFmT2p5czlqd25HbXU1Mmt2?=
 =?utf-8?B?SzN5eTM2WVBqdHFmUDUyT3c4N0xmaml0VkhRTlNxb01KRnFlQUtvbGdEOG1v?=
 =?utf-8?B?RmJzTlRqRklpaVJWQmxzMDJiUnl2S1RUcDdlQWRSTWdUNU5SRGErVGppTXBi?=
 =?utf-8?B?UlpoOThMWjhBRGptUVovWlQ2bWo5aC9Md3BMcUFVKzNaNWRFWFIzTDF2MWph?=
 =?utf-8?B?VlR6czFucjdrNEFhTVZoWUNCb2E3L2NtazkxRmt0YkpaVi9ESEhzWis0QVFG?=
 =?utf-8?B?cUtxVWVtdkZWVUNoSE9lRzQ1YWtnc0JxSVdpNTU1WDBVKzlQOXhiMUQ5YlhN?=
 =?utf-8?B?cmFjNWlwOHFLUWZhbVJabExMa1FHTUJJMUwxZG5sU2ZMbGZURjNWZW8veVNH?=
 =?utf-8?B?dmZEQk5UNUdxNXdZMTFKd0pVWnFqdk8wNFI4SnB2dGxRQTNId042T3Z1U2lw?=
 =?utf-8?B?cWF5MWtnVld4TlJuUm1VblZoVjRFSEhRc21HNHdWck4yelZGL3c2eGVSQjNN?=
 =?utf-8?B?WTlWWFdGWGs4VXd4KzZMT3FLcm4xUXJJRWNpRngwMWlDU1VjMXVwV0xYbTZ4?=
 =?utf-8?B?M1dXWXBYVHR3Qk54WDVXU3dpUVNDc3c4Uk80MGdNdFlhM2Rka1ptL2p4SnlG?=
 =?utf-8?B?UTlBdTQ5M1hHSlhzelA4aXpIWmV4ckhxSXo0b2lDakZzZlNiQWMrZkgyYTZW?=
 =?utf-8?B?V01XTCtjVml2c3pqbFk3UzRCWlVOOGdrVnJFOTBxbkt3YlNZUkRydmdFaCtI?=
 =?utf-8?B?ZTlVSjA0dEdjUTBET3ArWVpaYmd4NUxUL0tWdEpTb3Y2bTlzcGczRjVZVExr?=
 =?utf-8?B?aVVXcUJ3Z3lvZ2lNRjhSTlJXL2dtZEhoOWU0a3BJcDI3c1Rwd2g1THRYMkIx?=
 =?utf-8?B?VHNCdWh6U1hwKzZiOTdRZk5saktZdCttK3lmSGY3RmNiaFlzb0xEeGUzOGdP?=
 =?utf-8?B?eWdGRWxac3NLaDlhZHpVTSt6SXRGN3lBNlEvbENVYXA1YzZLM3hoNkoyempD?=
 =?utf-8?Q?JvBLmOE9xTJg5uwi9C?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82bcc803-8acd-46e8-5bbe-08de705855ed
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2026 08:16:23.5714
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v0lvyLmTX8aoX1SICHMQT9OCwOTvQEommOiR8wON6i+wUC4hAtf94gvsmSEo8MwH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR12MB9560
X-Spamd-Bar: -----
Message-ID-Hash: AQK2AIGWVFNGAD7XUVRIFH3CIBFSV366
X-Message-ID-Hash: AQK2AIGWVFNGAD7XUVRIFH3CIBFSV366
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 3/3] dma-buf: heaps: cma: charge each cma heap's dmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AQK2AIGWVFNGAD7XUVRIFH3CIBFSV366/>
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
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:mid]
X-Rspamd-Queue-Id: A955D165913
X-Rspamd-Action: no action

T24gMi8xOS8yNiAxODoxMCwgRXJpYyBDaGFudWRldCB3cm90ZToNCj4gT24gVGh1LCBGZWIgMTks
IDIwMjYgYXQgMDg6MTc6MjhBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+DQo+
Pg0KPj4gT24gMi8xOC8yNiAxODoxNCwgRXJpYyBDaGFudWRldCB3cm90ZToNCj4+PiBUaGUgY21h
IGRtYS1idWYgaGVhcHMgbGV0IHVzZXJzcGFjZSBhbGxvY2F0ZSBidWZmZXJzIGluIENNQSByZWdp
b25zDQo+Pj4gd2l0aG91dCBlbmZvcmNpbmcgbGltaXRzLiBTaW5jZSBlYWNoIGNtYSByZWdpb24g
cmVnaXN0ZXJzIGluIGRtZW0sDQo+Pj4gY2hhcmdlIGFnYWluc3QgaXQgd2hlbiBhbGxvY2F0aW5n
IGEgYnVmZmVyIGluIGEgY21hIGhlYXAuDQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBFcmljIENo
YW51ZGV0IDxlY2hhbnVkZUByZWRoYXQuY29tPg0KPj4+IC0tLQ0KPj4+ICBkcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY21hX2hlYXAuYyB8IDE1ICsrKysrKysrKysrKysrLQ0KPj4+ICAxIGZpbGUgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jIGIvZHJpdmVycy9kbWEtYnVmL2hl
YXBzL2NtYV9oZWFwLmMNCj4+PiBpbmRleCA0OWNjNDVmYjQyZGQ3MjAwYzNjMTQzODRiY2ZkYmU4
NTMyMzQ1NGIxLi5iYmQ0Zjk0OTU4MDhkYTE5MjU2ZDk3YmQ2YTRkY2EzZTFiMGEzMGEwIDEwMDY0
NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+Pj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmMNCj4+PiBAQCAtMjcsNiArMjcsNyBAQA0K
Pj4+ICAjaW5jbHVkZSA8bGludXgvc2NhdHRlcmxpc3QuaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4
L3NsYWIuaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4NCj4+PiArI2luY2x1ZGUg
PGxpbnV4L2Nncm91cF9kbWVtLmg+DQo+Pj4gIA0KPj4+ICAjZGVmaW5lIERFRkFVTFRfQ01BX05B
TUUgImRlZmF1bHRfY21hX3JlZ2lvbiINCj4+PiAgDQo+Pj4gQEAgLTU4LDYgKzU5LDcgQEAgc3Ry
dWN0IGNtYV9oZWFwX2J1ZmZlciB7DQo+Pj4gIAlwZ29mZl90IHBhZ2Vjb3VudDsNCj4+PiAgCWlu
dCB2bWFwX2NudDsNCj4+PiAgCXZvaWQgKnZhZGRyOw0KPj4+ICsJc3RydWN0IGRtZW1fY2dyb3Vw
X3Bvb2xfc3RhdGUgKnBvb2w7DQo+Pj4gIH07DQo+Pj4gIA0KPj4+ICBzdHJ1Y3QgZG1hX2hlYXBf
YXR0YWNobWVudCB7DQo+Pj4gQEAgLTI3Niw2ICsyNzgsNyBAQCBzdGF0aWMgdm9pZCBjbWFfaGVh
cF9kbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+PiAgCWtmcmVlKGJ1
ZmZlci0+cGFnZXMpOw0KPj4+ICAJLyogcmVsZWFzZSBtZW1vcnkgKi8NCj4+PiAgCWNtYV9yZWxl
YXNlKGNtYV9oZWFwLT5jbWEsIGJ1ZmZlci0+Y21hX3BhZ2VzLCBidWZmZXItPnBhZ2Vjb3VudCk7
DQo+Pj4gKwlkbWVtX2Nncm91cF91bmNoYXJnZShidWZmZXItPnBvb2wsIGJ1ZmZlci0+bGVuKTsN
Cj4+PiAgCWtmcmVlKGJ1ZmZlcik7DQo+Pj4gIH0NCj4+PiAgDQo+Pj4gQEAgLTMxOSw5ICszMjIs
MTcgQEAgc3RhdGljIHN0cnVjdCBkbWFfYnVmICpjbWFfaGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1h
X2hlYXAgKmhlYXAsDQo+Pj4gIAlpZiAoYWxpZ24gPiBDT05GSUdfQ01BX0FMSUdOTUVOVCkNCj4+
PiAgCQlhbGlnbiA9IENPTkZJR19DTUFfQUxJR05NRU5UOw0KPj4+ICANCj4+PiArCWlmIChtZW1f
YWNjb3VudGluZykgew0KPj4NCj4+IFNpbmNlIG1lbV9hY2NvdW50aW5nIGlzIGEgbW9kdWxlIHBh
cmFtZXRlciBpdCBpcyBwb3NzaWJsZSB0byBtYWtlIGl0IGNoYW5nZWFibGUgZHVyaW5nIHJ1bnRp
bWUuDQo+Pg0KPj4gSUlSQyBpdCBjdXJyZW50bHkgaXMgcmVhZCBvbmx5LCBidXQgbWF5YmUgYWRk
IGEgb25lIGxpbmUgY29tbWVudCB0aGF0IHRoZSBjbWEgaGVhcCBub3cgZGVwZW5kcyBvbiB0aGF0
Lg0KPj4NCj4gDQo+IEFncmVlZCwgd2hpbGUgcmVhZC1vbmx5IGl0IGlzIGVhc2lseSBtaXNzZWQg
d2l0aG91dCBhdCBsZWFzdCBhIGNvbW1lbnQuDQo+IEFsdGVybmF0aXZlbHksIHNob3VsZCB0aGF0
IHZhbHVlIGJlIGNhcHR1cmVkIGluIHRoZSBpbml0IGNhbGxiYWNrIHRvDQo+IGd1YXJhbnR5IGl0
IGlzIHNldCBvbmNlIGFuZCBtYWtlIHRoaXMgcmVxdWlyZW1lbnQgY2xlYXJlcj8NCg0KSXQgcHJv
YmFibHkgbWFrZXMgbW9yZSBzZW5zZSB0byBtYWtlIG5haWxzIHdpdGggaGVhZHMgYW5kIG1ha2Ug
aXQgcnVudGltZSBjb25maWd1cmFibGUuDQoNCkknbSBub3Qgc3VyZSBob3cgZXhhY3RseSBkbWVt
X2Nncm91cF90cnlfY2hhcmdlKCkvZG1lbV9jZ3JvdXBfdW5jaGFyZ2UoKSB3b3JrcywgY291bGQg
YmUgdGhhdCBpdCB3b3JrcyBjb3JyZWN0bHkgb3V0IG9mIHRoZSBib3ggYW5kIHlvdSBqdXN0IG5l
ZWQgdG8gaW5pdGlhbGl6ZSBidWZmZXItPnBvb2wgdG8gTlVMTCB3aGVuIG1lbV9hY2NvdW50aW5n
IGlzIG5vdCBlbmFibGVkLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBUaGFua3Ms
DQo+IA0KPj4gQXBhcnQgZnJvbSB0aGF0IHRoZSBzZXJpZXMgbG9va3MgdG90YWxseSBzYW5lIHRv
IG1lLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+ICsJCXJldCA9IGRt
ZW1fY2dyb3VwX3RyeV9jaGFyZ2UoDQo+Pj4gKwkJCWNtYV9nZXRfZG1lbV9jZ3JvdXBfcmVnaW9u
KGNtYV9oZWFwLT5jbWEpLCBzaXplLA0KPj4+ICsJCQkmYnVmZmVyLT5wb29sLCBOVUxMKTsNCj4+
PiArCQlpZiAocmV0KQ0KPj4+ICsJCQlnb3RvIGZyZWVfYnVmZmVyOw0KPj4+ICsJfQ0KPj4+ICsN
Cj4+PiAgCWNtYV9wYWdlcyA9IGNtYV9hbGxvYyhjbWFfaGVhcC0+Y21hLCBwYWdlY291bnQsIGFs
aWduLCBmYWxzZSk7DQo+Pj4gIAlpZiAoIWNtYV9wYWdlcykNCj4+PiAtCQlnb3RvIGZyZWVfYnVm
ZmVyOw0KPj4+ICsJCWdvdG8gdW5jaGFyZ2VfY2dyb3VwOw0KPj4+ICANCj4+PiAgCS8qIENsZWFy
IHRoZSBjbWEgcGFnZXMgKi8NCj4+PiAgCWlmIChQYWdlSGlnaE1lbShjbWFfcGFnZXMpKSB7DQo+
Pj4gQEAgLTM3Niw2ICszODcsOCBAQCBzdGF0aWMgc3RydWN0IGRtYV9idWYgKmNtYV9oZWFwX2Fs
bG9jYXRlKHN0cnVjdCBkbWFfaGVhcCAqaGVhcCwNCj4+PiAgCWtmcmVlKGJ1ZmZlci0+cGFnZXMp
Ow0KPj4+ICBmcmVlX2NtYToNCj4+PiAgCWNtYV9yZWxlYXNlKGNtYV9oZWFwLT5jbWEsIGNtYV9w
YWdlcywgcGFnZWNvdW50KTsNCj4+PiArdW5jaGFyZ2VfY2dyb3VwOg0KPj4+ICsJZG1lbV9jZ3Jv
dXBfdW5jaGFyZ2UoYnVmZmVyLT5wb29sLCBzaXplKTsNCj4+PiAgZnJlZV9idWZmZXI6DQo+Pj4g
IAlrZnJlZShidWZmZXIpOw0KPj4+ICANCj4+Pg0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

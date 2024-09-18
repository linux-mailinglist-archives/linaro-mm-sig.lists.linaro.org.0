Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8948997BCF2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Sep 2024 15:19:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 616FD440F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Sep 2024 13:19:37 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2053.outbound.protection.outlook.com [40.107.223.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9013040B2E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Sep 2024 13:19:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BStbco+z;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.53 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XEeB27tjb2IdgU70RX0xDwtzYyciYRg+OkxXz+Ni9ny2oTGzUWMRp9bnlzLBaxElR5IXYhlP/5+hiivI8up+punPU8BLS+KTzSJEzcnENyXu1bdYAi9ZoQDOX+XAXG8cNnoh8+AMdsGuoJReT+mGfxx1upNPHlPdmgkV1GemSMw+7RFn1Yr/8/sOxvnQiczD3iVM4yk4uX8tGRqf2zm4xu9jhBRIOpbiCTy+IQ1bEJpYELAd/LzRcqYb0jdHZDaZmNyw+VleNdk1v/G6RgNPyKS0mRI+Tv/PPS8cDMN1nf+q3EHWXiwiBu0iqvkT9cPoWscDbRfMK/mJcYqfkr320g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xh8e2UNRrVxXa9lNxTGeTfwArDuGmeWUtJOxsCTkBJw=;
 b=xDfAsEb4KEgRm5xDy20TnIc5QH7UleZmlpBXVSjT++zIpCFjn6lkcRIsU/JryL3Dsy63XhPr+E0suRGMDai/Ivvp0V4BQOZ8JyQp5YdYimZmXqXV8ZS5LofrrMnrcDyuTBZmsH6/AF4BUXvaReGRKSvitDpiW1YNTgZmqbl87p72PIre2m06pDKQyO76bhAAZ0OdHXAvPR9MO9wLqRsKMgWi2HwQNt4/hDPWphhTXfb/3aYPtsWYr5laEU7Y8M8FIKqdI14BVd60y3q84hSHBYOB7M8xW3ZLaUr8rGRz7BIvu4BXrWGQYZPbPr4yLY1BG5WyuSqiNyd/6XZ1D3a9Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xh8e2UNRrVxXa9lNxTGeTfwArDuGmeWUtJOxsCTkBJw=;
 b=BStbco+z6iZW8lXMgOObYtTNRFDhZ3xXkLVoy7ytvNo3wsBlHGJH+iEviWySdSyu1dwFYBUXnoy2gMa8bpX3rZlD2X5vrgYLopTOrBG2W731rTameKzSAWJ6UXcMDZX3UimI7mPuIHCaiQ+CdyOODLWTpLoPN0G3QiE3K0blE3A=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CYYPR12MB8939.namprd12.prod.outlook.com (2603:10b6:930:b8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Wed, 18 Sep
 2024 13:18:58 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 13:18:57 +0000
Message-ID: <b6808146-b798-45b6-b2b3-61d97825a85f@amd.com>
Date: Wed, 18 Sep 2024 15:18:50 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
References: <20230428125233.228353-1-thomas.hellstrom@linux.intel.com>
 <be9b192a-a125-6774-bb4f-8b9fb517ce0d@linux.intel.com>
 <ZrxYdIDdEJXRTFrn@phenom.ffwll.local>
 <0d406a89b1b63ebf53c5d0848843c72299c1ff75.camel@linux.intel.com>
 <a97c5f63053000b5fcfc14cb56c79c8ff976b4ad.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <a97c5f63053000b5fcfc14cb56c79c8ff976b4ad.camel@linux.intel.com>
X-ClientProxiedBy: FR2P281CA0031.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CYYPR12MB8939:EE_
X-MS-Office365-Filtering-Correlation-Id: bc1d5416-5394-4353-261f-08dcd7e473ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Rld4eGtiNDJyaTIxK1hZY1NELzNBTXlGeVV0ek9vc3N5bms0ZnVuVGp6TUlB?=
 =?utf-8?B?QU1PaE9rVXdvMjI2TnIxN29CdWwvRHVWbklHYkJRTmlROWUrUzlBZEJSUGR3?=
 =?utf-8?B?N0JrOHUwYjAremJsa1drcVBNQ1NUcmFuNEVIK29XQzZTSFdRcjV3WS9oU0RF?=
 =?utf-8?B?bXRiZ21CeWFHK2FFZ2I5NUlVL1NLL2kxRGtsbDUrWFV3SllTS0dVeGw3dmpj?=
 =?utf-8?B?NGZxUXA4ZVBaYXNDTDhuaHppT1NrNG5kMDdEdFl0TGh1VEJzS3FFK3JnaFBj?=
 =?utf-8?B?clZrNlNndlFGTmdHWHFJV3kzZmNLT0ZudkR6cWNyTlZVSFZYN0hFVWYvekhG?=
 =?utf-8?B?YXNyQU1BeXpZM1JHN1ZFb2xvM3ViL2o5ZGtlRzJud1V4TUhNQmxKUFRqM0dn?=
 =?utf-8?B?VS9Jd3R0dFkwSmRRUzAxUVZuMFQvWVFaaGtKYmE1VjhnQmpXcHdXNTN6Vkdz?=
 =?utf-8?B?OW1HRU1zVTZuSXlURkw5Vi8ybnYxVkxManVPc1FBT2J2R3BLdUFldVZLNHRM?=
 =?utf-8?B?VWFzR0ZxTHE5QWhFWVRDYVlNUGVsRlg3Vzl6SUxKR250eXZ5U25jWVlJMlF4?=
 =?utf-8?B?S0xQdGJBVjBaOENYWW5hVWFKWkw1NldRRkhYT0VxTk9jdW5sSHpmbDB1SUFQ?=
 =?utf-8?B?T1Q5RkE0SDlndWhzUjdtZ0Q1VGZ5Vk9vbGxaY05XWjVTQmVtcVV0VmhnSkxY?=
 =?utf-8?B?R3d4RGtTbUdPOFFFZmRnNVZoYjEvSTZJblE1Ullwc01iNElXc1VoSzBkT21S?=
 =?utf-8?B?cHNzWkNtdGNENzJFaTJxUWJSWDkxS282U2xWcGljdHd5Nzl6Z1VHcjFtcy9X?=
 =?utf-8?B?Zm52V0FEQ0pXOWJjNEtZMlYxendNbUsycW9lNEcxUDNkWU1IZzhadzdhcVRk?=
 =?utf-8?B?RUdaeks0V3N4MTJzQWovSW8vc1V2aWJMVDVpV1FpakgvZ1p3WFdCampKZjE1?=
 =?utf-8?B?RERtbEFKckdqajFNRVRTbWt4RUpvQ2Zod3FrYmVRYUlJendkU3NmeDYxYi9C?=
 =?utf-8?B?cmJMSkNKSTR3QTlueGFwakVOWGtIK2NSRlYxVUdBRWRmbEpLRTlhNzhLRUpM?=
 =?utf-8?B?c0hGTTFianFHMnZrVDF6YkVvUWtwT3VudUhMOEJZMVhFOGxxZGZ4TjdVczBC?=
 =?utf-8?B?MTBIcThyNEZWTFFzL2FTQjhhVFdXbE5taFhYMU0ybzNTd21HV1J0OVA4RDcr?=
 =?utf-8?B?R0xKM1llbmF4TjdhYW9hWTF4NHRrMXdPYTZFVUVQanRFTCs5Z0RCRmcwNkJQ?=
 =?utf-8?B?Ty80K1ZKUmVhMnVrblN5S3ErL1BOSjh4WURNdkRMNnJVYS91cnBGUEM0eDdL?=
 =?utf-8?B?UnZZK0lva2EzRi9kV2FyTFFwS1p0clFZQTRBdzFYK1oxaHpnWmQrUmo5MmYr?=
 =?utf-8?B?dzg3QS8zTmhFSXBvL0QzUmxMRTVnRnFFUmhHQmpwRWZSVHo3azFBVVljYzVp?=
 =?utf-8?B?dWs1MWYydVg4emFjUWdmMDcvOWM2b2JLd2ZmTDU4TWtzNmZkUTUybTNsSTV1?=
 =?utf-8?B?SXlTOEZLVmxTRlVHQzJVNGJtRHFSZ0Q2alpUN25RaVI5UDZlSCs4cW0xdlBi?=
 =?utf-8?B?a1A3TjFDa2U5d0RXSUg5SXI5SVJxS05WZVg4QWJoVjJWZDEvSGY3Q2V5N3VM?=
 =?utf-8?B?WUUvcUFnbThyNUFYRjB5TUJvaVMxV1NZMXhwcEo5dGp5bVB6N0xnRlIvUDlW?=
 =?utf-8?B?SWo0UjMxUi8yUXYwaDZDcUJXT3ZXOWNXaGE4UXV1NFJFNGZ4U2JPbTdtTkND?=
 =?utf-8?B?WTM2QWdkS0VWcG54Y0ZoTnNvd25hUTJnZDBpcERHVGs5ZzBZRjdJOFJ1aGVk?=
 =?utf-8?B?VHAxMzVtR3gycGFOUTJmQT09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NVlUVkg5czdCaVBJamlYbjl4THJBa2s5QUg0SU1QNmRqYklQUXJDRyt5TW1m?=
 =?utf-8?B?dnB2b2pjQlVhVFpvQnl3M2V3UjNIL1k2MXJjaW1NSkdmM3dnSkZPZGNoc3Iz?=
 =?utf-8?B?NVdjaC9JZHZneUlUUUt3Vkk1S0VSbENjRDQ3WDUwRHJ4VGhHOUsyS3BKOUM4?=
 =?utf-8?B?OXE3M2NWRmtncUlWUWMwMTdOWHRSa3BqZ1FmZUZJd1hITTBaUHR3Y040Ympj?=
 =?utf-8?B?eUFRTnRoZjVSVTUzQmt5aFV4UG1sMkorUHFNWmNBTFNEWTduSlRXT28yTjlT?=
 =?utf-8?B?aW1OOHNVOXBxRkZ0d1RMcWZUSVNGdHg1OTF6TUQ0ejI5c05Jc0ZsUm5sNzlm?=
 =?utf-8?B?b2ZkZzRQVG1PSkhmdURXc0tUTDJnK2oveGxVZlR4eWFKVkFaK3UzUExSSHN5?=
 =?utf-8?B?U3dVRUo1clJyRm9mN0FOelNTeUw3dGQrQ2EydHVHZWY2NDBPeEdrNUpGSTFE?=
 =?utf-8?B?MUFZZE1XNytrRlN6K3h1aUExWnllOXZ5eTJvUjVLcHQvbTBLejh0TG9FaFlw?=
 =?utf-8?B?bitleHhEbmZjK3ZTOUcxWnpDOGR4NjR4ZFN6MUFhQTRucXRFWVRiRlc1bnZu?=
 =?utf-8?B?RGZtaHRBcWJhVlhreC9xSGtLMUpIYmluRmJkS3dzWkNWckdqMzBScThEMzdK?=
 =?utf-8?B?VXlLUzM0NHFOVk40NGJVZ3ZuM3RoRGdOcy9QMWZhYm16TTJ1eTdEeDYwUU0z?=
 =?utf-8?B?UFlNNy9PREF4aGpGTjNyU010WStLZVMzdmZ0MVBGclVraGdveDZRaUVSS1BL?=
 =?utf-8?B?VHFxekFzK0VGOElFUUsvbTRZOVN5QlJiTzdDWGxJK2JvZjNYMmZRSVRLMW5x?=
 =?utf-8?B?aHpwUU54ZVlrNXBmVWswTjZUc2dEV1BCcDhCWmVYanNIWTVCOEd2OE5uTXp6?=
 =?utf-8?B?YTdmLzR3d0MrdENzNnNQMVRUWDhIMkpjL0hHN1BjMWRWNWlhRVZibGUzZmlX?=
 =?utf-8?B?cnlaVzE3N3VpOVdrNU5YME1XUWlma2h5RW12eThBODlGV3loVGMxb0s3WjlT?=
 =?utf-8?B?cmYvaTNYYUpIZkQ1ZzF6RzFvRDJ6RVJHdHFKUWpTVDNmUlFTdlRMRnNIR0M5?=
 =?utf-8?B?NVhXTXlpOGFJQ3kxN3k3ZTgxc05PVSs1a2tUY3ErUTBlOUM4YmJLUGtEc1RZ?=
 =?utf-8?B?aXhtZFZCeDZMS29YL1lYcVJ0UXdhdmw1VThlZDBtaTd3dVpRcWhqaTd3dHdG?=
 =?utf-8?B?TzZFZ2ZXRWZvc29XU2kvdWdKZ1ROZVVCUndKNTVzL2FYTmNLQnpqVzFLRy9j?=
 =?utf-8?B?ajBqbm1RTktNWmd1c09mUVZrUjUvTnJVOEdKcWE3d01qaCs1VG96SjlQa2pj?=
 =?utf-8?B?bVZiMktFMFExWkJtU0MzcFNtemthVktQdnprUjFEeWZGRUlhL2Jnc2NUWjNC?=
 =?utf-8?B?d0kyY1JyMVhBc1ZVdStwNUJvaXRDRjc4ZCszdlJUSjJsc3lkSVlBUDJaTGlp?=
 =?utf-8?B?RFNnc3JYdFJZejhOWmxSSnA5WkhxK1ZOY09mUW55N0FUcGxYaGMzYlNtd2lN?=
 =?utf-8?B?QkRwVjVsS2hrNXhxTWtoclJ0M2NWa2pEdzFyU0lSZm1GMEJaUmRnSUdtL2JV?=
 =?utf-8?B?b0RCRkdTNldrN2t6ZHJ6ckE4U0VvUXRPTyt0VEpoU3hhZEp1ZEJPL0QveCt3?=
 =?utf-8?B?UjljaWIxMXU4dDBTQmM2ZVFHNE5TRDhmb1BlR0RTUjlXMUh0eFpOakYvRUZo?=
 =?utf-8?B?Z0FISzdESm8zWUNYbDVlcmtpWEtobThtdEh6SUJ6akdjMi8xNmxSdFBkNVlD?=
 =?utf-8?B?M0lObk5KL3F0ZjY4b3RoNUI3SmlSak1CcUgyZGluVU1OYm1VYU1tZkwzTGwv?=
 =?utf-8?B?MjUzdnBnL1hFNDkrcWpUVTVNUkg2VDg1UStEcmlqZW5ESFVlVlJPdkFaWElM?=
 =?utf-8?B?bkZTVGppVHczTG1Gb1ZKOHg2TktUZysra2UzaEZwREl0bDAwUlRtM3BDWUs1?=
 =?utf-8?B?TkE3Q0NQUWYxZXlDQmVCMDVaYWk1UTlFdkxtbTlpaGcrY3dQZGFqNWtRTTBQ?=
 =?utf-8?B?b0E0OHlMVkU1dEYweUxJU2k2NEZTL1hWa3h4MStQYWRNWWI3VXczbXlaN3Jm?=
 =?utf-8?B?ZHgvOGFpYTJvYUlCbFV0Z05sd05JTUtMQ204MEpEQ0tZYTlVekhRWHZPMDJi?=
 =?utf-8?Q?g/+E=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1d5416-5394-4353-261f-08dcd7e473ab
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 13:18:57.5647
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +qM5JU+P/IksammlsGG/z7LrAkRgJQjJqMGr1ghOmRR4bmm4sn04B4bwq+rnHHGG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR12MB8939
X-Rspamd-Action: no action
X-Spamd-Bar: ---------
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9013040B2E
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.53:from];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: TCWR4AULHBCGWNSDOXJ5S6PAHG4DIUQW
X-Message-ID-Hash: TCWR4AULHBCGWNSDOXJ5S6PAHG4DIUQW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: RESEND Re: [RFC PATCH] dma-buf/dma-fence: Use a successful read_trylock() annotation for dma_fence_begin_signalling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TCWR4AULHBCGWNSDOXJ5S6PAHG4DIUQW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U29ycnksIHNvbWVob3cgY29tcGxldGVseSBtaXNzZWQgdGhhdC4gRmVlbCBmcmVlIHRvIHB1c2gg
aXQgdG8gDQpkcm0tbWlzYy1uZXh0Lg0KDQpDaHJpc3RpYW4uDQoNCkFtIDE4LjA5LjI0IHVtIDE0
OjM0IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06DQo+IENocmlzdGlhbiwNCj4NCj4gUGluZz8N
Cj4NCj4NCj4gT24gV2VkLCAyMDI0LTA4LTE0IGF0IDEwOjM3ICswMjAwLCBUaG9tYXMgSGVsbHN0
csO2bSB3cm90ZToNCj4+IENocmlzdGlhbiwNCj4+DQo+PiBBY2sgdG8gbWVyZ2UgdGhpcyB0aHJv
dWdoIGRybS1taXNjLW5leHQsIG9yIGRvIHlvdSB3YW50IHRvIHBpY2sgaXQgdXANCj4+IGZvciBk
bWEtYnVmPw0KPj4NCj4+IFRoYW5rcywNCj4+IFRob21hcw0KPj4NCj4+DQo+PiBPbiBXZWQsIDIw
MjQtMDgtMTQgYXQgMDk6MTAgKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6DQo+Pj4gT24gRnJp
LCBNYXkgMjYsIDIwMjMgYXQgMDE6MTE6MjhQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3Jv
dGU6DQo+Pj4+IERhbmllbCwNCj4+Pj4NCj4+Pj4gT24gNC8yOC8yMyAxNDo1MiwgVGhvbWFzIEhl
bGxzdHLDtm0gd3JvdGU6DQo+Pj4+PiBDb25kc2lkZXIgdGhlIGZvbGxvd2luZyBjYWxsIHNlcXVl
bmNlOg0KPj4+Pj4NCj4+Pj4+IC8qIFVwcGVyIGxheWVyICovDQo+Pj4+PiBkbWFfZmVuY2VfYmVn
aW5fc2lnbmFsbGluZygpOw0KPj4+Pj4gbG9jayh0YWludGVkX3NoYXJlZF9sb2NrKTsNCj4+Pj4+
IC8qIERyaXZlciBjYWxsYmFjayAqLw0KPj4+Pj4gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmco
KTsNCj4+Pj4+IC4uLg0KPj4+Pj4NCj4+Pj4+IFRoZSBkcml2ZXIgbWlnaHQgaGVyZSB1c2UgYSB1
dGlsaXR5IHRoYXQgaXMgYW5ub3RhdGVkIGFzDQo+Pj4+PiBpbnRlbmRlZA0KPj4+Pj4gZm9yIHRo
ZQ0KPj4+Pj4gZG1hLWZlbmNlIHNpZ25hbGxpbmcgY3JpdGljYWwgcGF0aC4gTm93IGlmIHRoZSB1
cHBlciBsYXllcg0KPj4+Pj4gaXNuJ3QNCj4+Pj4+IGNvcnJlY3RseQ0KPj4+Pj4gYW5ub3RhdGVk
IHlldCBmb3Igd2hhdGV2ZXIgcmVhc29uLCByZXN1bHRpbmcgaW4NCj4+Pj4+DQo+Pj4+PiAvKiBV
cHBlciBsYXllciAqLw0KPj4+Pj4gbG9jayh0YWludGVkX3NoYXJlZF9sb2NrKTsNCj4+Pj4+IC8q
IERyaXZlciBjYWxsYmFjayAqLw0KPj4+Pj4gZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKTsN
Cj4+Pj4+DQo+Pj4+PiBXZSB3aWxsIHJlY2VpdmUgYSBmYWxzZSBsb2NrZGVwIGxvY2tpbmcgb3Jk
ZXIgdmlvbGF0aW9uDQo+Pj4+PiBub3RpZmljYXRpb24gZnJvbQ0KPj4+Pj4gZG1hX2ZlbmNlX2Jl
Z2luX3NpZ25hbGxpbmcoKS4gSG93ZXZlciBlbnRlcmluZyBhIGRtYS1mZW5jZQ0KPj4+Pj4gc2ln
bmFsbGluZw0KPj4+Pj4gY3JpdGljYWwgc2VjdGlvbiBpdHNlbGYgZG9lc24ndCBibG9jayBhbmQg
Y291bGQgbm90IGNhdXNlIGENCj4+Pj4+IGRlYWRsb2NrLg0KPj4+Pj4NCj4+Pj4+IFNvIHVzZSBh
IHN1Y2Nlc3NmdWwgcmVhZF90cnlsb2NrKCkgYW5ub3RhdGlvbiBpbnN0ZWFkIGZvcg0KPj4+Pj4g
ZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcoKS4gVGhhdCB3aWxsIG1ha2Ugc3VyZSB0aGF0IHRo
ZQ0KPj4+Pj4gbG9ja2luZyBvcmRlcg0KPj4+Pj4gaXMgY29ycmVjdGx5IHJlZ2lzdGVyZWQgaW4g
dGhlIGZpcnN0IGNhc2UsIGFuZCBkb2Vzbid0IHJlZ2lzdGVyDQo+Pj4+PiBhbnkNCj4+Pj4+IGxv
Y2tpbmcgb3JkZXIgaW4gdGhlIHNlY29uZCBjYXNlLg0KPj4+Pj4NCj4+Pj4+IFRoZSBhbHRlcm5h
dGl2ZSBpcyBvZiBjb3Vyc2UgdG8gbWFrZSBzdXJlIHRoYXQgdGhlICJVcHBlcg0KPj4+Pj4gbGF5
ZXIiDQo+Pj4+PiBpcyBhbHdheXMNCj4+Pj4+IGNvcnJlY3RseSBhbm5vdGF0ZWQuIEJ1dCBleHBl
cmllbmNlIHNob3dzIHRoYXQncyBub3QgZWFzaWx5DQo+Pj4+PiBhY2hpZXZhYmxlDQo+Pj4+PiBp
biBhbGwgY2FzZXMuDQo+Pj4+Pg0KPj4+Pj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLD
tm0NCj4+Pj4+IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCj4+Pj4gUmVzdXJy
ZWN0aW5nIHRoZSBkaXNjdXNzaW9uIG9uIHRoaXMgb25lLiBJIGNhbid0IHNlZSBhIHNpdHVhdGlv
bg0KPj4+PiB3aGVyZSB3ZQ0KPj4+PiB3b3VsZCBtaXNzICpyZWxldmFudCogbG9ja2luZw0KPj4+
PiBvcmRlciB2aW9sYXRpb24gd2FybmluZ3Mgd2l0aCB0aGlzIHBhdGNoLiBPZmMgaWYgd2UgaGF2
ZSBhDQo+Pj4+IHNjaGVkdWxlcg0KPj4+PiBhbm5vdGF0aW9uIHBhdGNoIHRoYXQgd291bGQgd29y
ayBmaW5lIGFzIHdlbGwsIGJ1dCB0aGUgbGFjayBvZg0KPj4+PiBhbm5vdGF0aW9uIGluDQo+Pj4+
IHRoZSBzY2hlZHVsZXIgY2FsbGJhY2tzIGlzIHJlYWxseSBzdGFydGluZyB0byBodXJ0IHVzLg0K
Pj4+IFllYWggdGhpcyBpcyBqdXN0IGEgYml0IHRvbyBicmFpbi1tZWx0aW5nIHRvIHJldmlldywg
YnV0IEkgY29uY3VyDQo+Pj4gbm93Lg0KPj4+DQo+Pj4gUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQo+Pg0KPj4NCj4+DQo+Pg0KPj4NCj4+DQo+Pg0K
Pj4NCj4+DQo+Pj4gSSB0aGluayB3aGF0IHdvdWxkIGhlbHAgaXMgc29tZSBsb2NrZGVwIHNlbGZ0
ZXN0cyB0byBjaGVjayB0aGF0IHdlDQo+Pj4gYm90aA0KPj4+IGNhdGNoIHRoZSBzdHVmZiB3ZSB3
YW50IHRvLCBhbmQgZG9uJ3QgaW5jdXIgZmFsc2UgcG9zaXRpdmVzLiBNYXliZQ0KPj4+IHdpdGgg
YQ0KPj4+IHBsZWEgdGhhdCBsb2NrZGVwIHNob3VsZCBoYXZlIHNvbWUgbmF0aXZlIGZvcm0gb2Yg
Y3Jvc3MtcmVsZWFzZQ0KPj4+IGFubm90YXRpb25zIC4uLg0KPj4+DQo+Pj4gQnV0IGRlZmluaXRl
bHkgc2VwZXJhdGUgcGF0Y2ggc2V0LCBzaW5jZSBpdCBtaWdodCB0YWtlIGEgZmV3IHJvdW5kcw0K
Pj4+IG9mDQo+Pj4gcmV2aWV3IGJ5IGxvY2tkZXAgZm9sa3MuDQo+Pj4gLVNpbWENCj4+Pg0KPj4+
PiBUaGFua3MsDQo+Pj4+DQo+Pj4+IFRob21hcw0KPj4+Pg0KPj4+Pg0KPj4+Pg0KPj4+Pj4gLS0t
DQo+Pj4+PiAgwqAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgNiArKystLS0NCj4+Pj4+
ICDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPj4+
Pj4NCj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLQ0KPj4+Pj4gZmVuY2UuYw0KPj4+Pj4gaW5kZXggZjE3N2M1NjI2OWJi
Li4xN2Y2MzI3NjhlZjkgMTAwNjQ0DQo+Pj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMNCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+Pj4gQEAg
LTMwOCw4ICszMDgsOCBAQCBib29sIGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKHZvaWQpDQo+
Pj4+PiAgwqDCoAlpZiAoaW5fYXRvbWljKCkpDQo+Pj4+PiAgwqDCoAkJcmV0dXJuIHRydWU7DQo+
Pj4+PiAtCS8qIC4uLiBhbmQgbm9uLXJlY3Vyc2l2ZSByZWFkbG9jayAqLw0KPj4+Pj4gLQlsb2Nr
X2FjcXVpcmUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMCwgMCwgMSwgMSwgTlVMTCwNCj4+Pj4+
IF9SRVRfSVBfKTsNCj4+Pj4+ICsJLyogLi4uIGFuZCBub24tcmVjdXJzaXZlIHN1Y2Nlc3NmdWwg
cmVhZF90cnlsb2NrICovDQo+Pj4+PiArCWxvY2tfYWNxdWlyZSgmZG1hX2ZlbmNlX2xvY2tkZXBf
bWFwLCAwLCAxLCAxLCAxLCBOVUxMLA0KPj4+Pj4gX1JFVF9JUF8pOw0KPj4+Pj4gIMKgwqAJcmV0
dXJuIGZhbHNlOw0KPj4+Pj4gIMKgIH0NCj4+Pj4+IEBAIC0zNDAsNyArMzQwLDcgQEAgdm9pZCBf
X2RtYV9mZW5jZV9taWdodF93YWl0KHZvaWQpDQo+Pj4+PiAgwqDCoAlsb2NrX21hcF9hY3F1aXJl
KCZkbWFfZmVuY2VfbG9ja2RlcF9tYXApOw0KPj4+Pj4gIMKgwqAJbG9ja19tYXBfcmVsZWFzZSgm
ZG1hX2ZlbmNlX2xvY2tkZXBfbWFwKTsNCj4+Pj4+ICDCoMKgCWlmICh0bXApDQo+Pj4+PiAtCQls
b2NrX2FjcXVpcmUoJmRtYV9mZW5jZV9sb2NrZGVwX21hcCwgMCwgMCwgMSwNCj4+Pj4+IDEsDQo+
Pj4+PiBOVUxMLCBfVEhJU19JUF8pOw0KPj4+Pj4gKwkJbG9ja19hY3F1aXJlKCZkbWFfZmVuY2Vf
bG9ja2RlcF9tYXAsIDAsIDEsIDEsDQo+Pj4+PiAxLA0KPj4+Pj4gTlVMTCwgX1RISVNfSVBfKTsN
Cj4+Pj4+ICDCoCB9DQo+Pj4+PiAgwqAgI2VuZGlmDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B2DAC0AEF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 13:58:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E2978443FC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 11:58:07 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2077.outbound.protection.outlook.com [40.107.243.77])
	by lists.linaro.org (Postfix) with ESMTPS id 57E983F68D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 11:57:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=D3f6ImJW;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.77 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HsOwbdFUoiNIstwnyHaC9+lJbUg/q6dOYm6vNHN9rA85HK65LTEGVKSS5NvhWIsvX2ZxOO7bi76uY0HfsFDzGFbvzg+HPy19ZcqIoIy53ADVrC6uYQtoC/pJCXzMtrGGAXuZPQCufMOVt3aitX6SKc3330DjYOftqID4mMNgxYd7301YgPJl9NjcqcPw+pja+XmVpnqDmqLC7lyMnUwUtIaMPOyr9VxseNehjsyuWATGsrfE9fh2gq7WRn01FZVRTAAFUbRPvMzTdRtZ4t2qCDXillMNeLksAtEVKZeodBviJwtLzBojTyrG/LJsFosvkJtL5bJpU5ScpUaFiZpLWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UDR8KDmqu+o4vuVnSFZlQ6Y6Dft8RfrBJy62zHXU7MA=;
 b=ILk2nFA3xZJGV9DgpnL5FwIoflX+9Mvw0DzA28w3v3NkNMFGqqw4xAy6RVQLPMb0TEGu3E6AhIHN5Gous34UYS7bRJzaNctB0pYc5LIylpEqoSkfjyI10Y7gxEuFVaZ6yGXlAVcGCXG6QTn9aa+WkAoxS9epA0Rdh0Qlajth0XrsQjxZR8k4/x4RmPZVhaPBAOQYZRC/MPDjEw03N7kFktZN3REubPyezjGfOEyLH4aQXnDb4jx8fJyhj6vWw25uvi5bgPr8NKuhYPitQEgdwye5ipX5CuXo7BH6qyMbaJGxjMCVvbUgFKBe4VPDUQdMnPslvKyznOVUmEIRfdhIwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UDR8KDmqu+o4vuVnSFZlQ6Y6Dft8RfrBJy62zHXU7MA=;
 b=D3f6ImJWTaGQTqR+q4JCglb+9xRcjNeFtKHwqViB3x/uRWDjFSyo/SV9hXkB/Emeza72VGxvnFWapXg4RLBKv/YntkuEPMouLyPgckFh6v0LdNhLSplXBIhZb2Tp/KSbFi6MLK9uFqdHIaJmxNgpTCeEXEQvAVSDdBLLIitf03c=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB7570.namprd12.prod.outlook.com (2603:10b6:610:149::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.22; Thu, 22 May
 2025 11:57:52 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Thu, 22 May 2025
 11:57:52 +0000
Message-ID: <4a53b6bf-9273-4e77-9882-644faafa200a@amd.com>
Date: Thu, 22 May 2025 13:57:45 +0200
User-Agent: Mozilla Thunderbird
To: wangtao <tao.wangtao@honor.com>, "T.J. Mercier" <tjmercier@google.com>
References: <20250513092803.2096-1-tao.wangtao@honor.com>
 <fdc8f0a2-5b2f-4898-8090-0d7b888c15d8@amd.com>
 <5b68b2a50d48444b93d97f5d342f37c8@honor.com>
 <ef978301-6a63-451d-9ae6-171968b26a55@amd.com>
 <9f732ac8b90e4e819e0a6a5511ac3f6d@honor.com>
 <50092362-4644-4e47-9c63-fc82ba24e516@amd.com>
 <2755aae2f1674b239569bf1acad765dc@honor.com>
 <2487bad4-81d6-4ea2-96a7-a6ac741c9d9c@amd.com>
 <a3f57102bc6e4588bc7659485feadbc1@honor.com>
 <5c11b50c-2e36-4fd5-943c-086f55adffa8@amd.com>
 <CABdmKX30c_5N34FYMre6Qx5LLLWicsi_XdUdu0QtsOmQ=RcYxQ@mail.gmail.com>
 <375f6aac8c2f4b84814251c5025ae6eb@honor.com>
 <38aa6cf19ce245578264aaa9062aa6dd@honor.com>
 <CABdmKX0nAYDdgq-PHv0HxucfYQzvvTAJjVCo7nQ0UtjwcF02aQ@mail.gmail.com>
 <7198873a044143c7be12f727b469649b@honor.com>
 <fdd7a11b-140c-40bd-a1c1-334d69256b92@amd.com>
 <e61fcdbf71ba4f9dbfef2f521d1b2fc1@honor.com>
 <d786ff9f-9bf0-42e1-987f-f2091fd90279@amd.com>
 <068cca07bc5a4e68be5355c884843b8a@honor.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <068cca07bc5a4e68be5355c884843b8a@honor.com>
X-ClientProxiedBy: MN2PR13CA0009.namprd13.prod.outlook.com
 (2603:10b6:208:160::22) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB7570:EE_
X-MS-Office365-Filtering-Correlation-Id: 81f0e1dd-ddec-42e4-78ad-08dd9927e138
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?OERwUjlrSGUydUR0NGlsNzJ1czVMQy9wc0t2ZlhlYUhnOFdHQnNId2NjV0p1?=
 =?utf-8?B?Y3NhMFZWRS9JZVczNm5ZSGUzZWlDdjBGUUhkRWd6TzBEVXBaeDlwZy9VQkJF?=
 =?utf-8?B?cXNQUURvRk5vQldEMGtNeVhERmxucjNzeFBJU2w0RUprSzdjakc3c2FPYXR1?=
 =?utf-8?B?bG03bzlyMTJzUU9Gb0daOGlrU0VscEhRbU9TZGJXLzdBRDVTL3NJN3djUGZx?=
 =?utf-8?B?WVB0eStHQ1VlakoycGhDeEhlTmxjVnVpNEo2QmhNM1hvNzByK0ZQK1lmVnJj?=
 =?utf-8?B?N2tlcTNtNUk2RU9yTFpiRXlDMThCRmY3MDNROFdWNzFtcXQwdWNiUWlmcDlK?=
 =?utf-8?B?bmx0dUUrNjZmWUVuNFJubnlmQ01SNzU5MUlLcHl4b2JMdHVMS0pINHgyQVM3?=
 =?utf-8?B?eUdZOWs4T1pOdW45dUxEQnJuU0c2VmR4SmRCd2lDM2NsZEhjT3RtQWhzeHMv?=
 =?utf-8?B?SyszUEpLREIrT2J5cENTSHB6Und0NkxoZXE4RldRdE9PYldZOXh2Z0dVb0Vt?=
 =?utf-8?B?RENBbFUwcDZZcXJyVlNLdENpcTRSRWdWSGRVN1F1cHRGZWpyd2JJYmk4Q0JQ?=
 =?utf-8?B?eFhFQjg0bVc0cXdHK1NUaHc2am1aZjBJS2RGOXpHMzhUdndmWUxEWmR4eVFI?=
 =?utf-8?B?eTRrQ3NNbzNTSnNHYjFLbDVMYVFFclBtZ3JycXpqL3ZUUXcyck1LQWIvK29R?=
 =?utf-8?B?ZmQwU1BFL1k4VW5JZjVYWlVBNWhCNmt1REhvQ1JYdE9CY0ovR1Q2N2hlU25l?=
 =?utf-8?B?WjBpekdSekxveGFldlRXQmhIV2dWWWIwWWhqMkY4OWI4TlRrNDFIWDRBN3lj?=
 =?utf-8?B?YmR2WGZtKzBCb0l5cmkwUlhsS2V5dmsycW5LazV0TFBLbUw3YXl4d2NwUm1x?=
 =?utf-8?B?eGhHeDJRTjhjcGJSSXpoOW5UL3A5KzUwSko5bXJiK2lGclQ5TkgxZnU4WVM5?=
 =?utf-8?B?QUwzM1BDZG40T1dZNTBvS0Q2YVJMVkxZUG5PZFdoWVFqWFY4SXM3UzJ5N3Zi?=
 =?utf-8?B?YXM1QnJ0K1RROG10dGVpQjljUno0TGwvcXRibjFhK011WTVCQ1EyWTB5K24v?=
 =?utf-8?B?eUJUMG9VS1FRU0Z5M0NQR2luK3hsK0NLSGRNRlkvUzdQUll3Qkh2U3dWNDU3?=
 =?utf-8?B?Uy85OTZRWGE2ank4Slpra0RjV3djY0VBbzR2b1VuNTBsQTVHZkpraTd3Ungw?=
 =?utf-8?B?QTA0RldQOGxKaWdPUk1EVHFNd2h1TXp2dHh2REFWVHN6dVc3SXNCaFdlWnBK?=
 =?utf-8?B?aHkyVUFUekwzeWtUWXdqOEdFTjRKN3Z2L1VLWE04Q1dZYUx6TWZINVpZL3Ar?=
 =?utf-8?B?Qi9iQkVycUVSejlKUnEyZ09NRTN0clhxNnRrVTN6WkhTMDBnSWVYd3lkMmhQ?=
 =?utf-8?B?c0VaU1J3ZXF3NFg4WGxacllsMmU2Ylp2ZTQ4TG9iYnRZYktucDQ2UFp4RlVM?=
 =?utf-8?B?QjdrdzdGRklrMUtLSU1KRkFhTE15bHc3VzBKSy80REl4Yi9YTXYyWEJvczJX?=
 =?utf-8?B?ZWpvNHZzdXgza1A3VGVtVis5L2ExRS9MUHNxcnYxSUpKWmF6V0d5U0QvVThp?=
 =?utf-8?B?SVUwRFlmYk1kTjIrWDYxM1A3dW50cHhnS0RhQWFRVk9qL2h5aDdvVC93Qmky?=
 =?utf-8?B?K2ZucTBtLzloU0FUcFJGMlBMOW1SN3U2Ymc3WGlCeElmMzVyejRIamJxQ00z?=
 =?utf-8?B?OWhjeHQzZVhLamMvVEtUTXY4QjdXejZrVUU2MHlQR3lFNVJ6M0xMeVp0YUpT?=
 =?utf-8?B?NTNhV2x4TnRQM2Fkd3Zpa1hVdS9FQmt4MzZmcDdNcTF1ekFGdmtwREVUOVdn?=
 =?utf-8?B?UC9VSWVQUXNRVFhtU0c4OGpkczB3bDFGY1Fqai82YlJGdW1OdHRDMVNQSXRn?=
 =?utf-8?B?c1Q4QnM4b2s1Z0poOTN0bjIzYktBZSt0YTFiNDA0ODFIcWxxcXY2YzVHUGhM?=
 =?utf-8?Q?AL4c8gT5tL4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YXZ5WU1kQ0JTUGIwZXhoZ2pJdW1DVzgzTndYTTd5ZXY0ZzNtU2ZnV2RGcllp?=
 =?utf-8?B?VjIvN1E1RkRzV1U1dDhLb3VtaW05SXdhM1JXejh1Y0JyQWNCWk4rTFF6RkF6?=
 =?utf-8?B?SlMxUXZxUlNZZVRTaFg0ZlkvUXRmZnZnZ2o5WG1XSnYrWU9HWUMzdjB4Tmxa?=
 =?utf-8?B?ZERnWEJWN0RZQTUxQngvelZjQlI4NlBVNDFabTh1RFBYRm5Hd3BzUm1nQ21i?=
 =?utf-8?B?Q2Nsbm5TQWZGckM2TGpnRVZvcGl3UHdWckFGRm85bm9iRVN1R0g5RWJ0b1pB?=
 =?utf-8?B?Y1drVDJ2cCticVdraWlQeDNtYXQ0SlA4TGk0U0hZTjFUL29iTUdzK29Ydktv?=
 =?utf-8?B?TFpaa2xIN2t4Z0VEMTBmbWpEaXF0SXNnQ0g5dUtTVWI2dGNxcExNYXlhR01U?=
 =?utf-8?B?aG9UL1JQdm5MU292bUV0SDRhaDBQc1pIdkVtV3I1bnRWb1ZSRVg5VnpCdlRO?=
 =?utf-8?B?U0V5cUFoc09GNXBldWdTd1lnNXdQTXBhV21LWUZvY3dCR2g3bytjSXgvVnpr?=
 =?utf-8?B?enQ0N0NtM3dLS2M4WUJnL21NVVFpSVpNd0loSGxTN01lU21iSVlBbWVHUXZG?=
 =?utf-8?B?RXF4NVFBVWJVd0h2aFVoQXhYVndwdFpLVnlFcnRpUU1mRmdraEwxa0xoMUdj?=
 =?utf-8?B?eitwU0VpYWF5ZVVyeGVrVjQ4bVU4UXFSdnJXTW1qOWt4RE80RGZYSXNkL0tu?=
 =?utf-8?B?WlV1V1AvUG9nZEFzc3hVd25aU09oK2JYWUlxWFJqK09kak4rNjZzSHpUQkMz?=
 =?utf-8?B?bUhhZkJ2VXBMN0M1Q2pvV0RBL2tjdVo1MkMxUkgyRzVuemdQWXMrUmVhQzZX?=
 =?utf-8?B?ZmFtb1dJRUd3Um5TSlNpd3VxeExpcWJndFBYQWhjdXd1RkZZNnVJTUd6RUlQ?=
 =?utf-8?B?MkRFaE8rcXp0VTFKa29CWkU4b2kyQjE0djNLd2ZBSk9yNUpWUGwyS1NubG5q?=
 =?utf-8?B?bkpIVU0xemI3UmJ4YTQ2KzhSRW5ORXpsL1ExbkpZNGU2Rm83N0NIclZqejdJ?=
 =?utf-8?B?SVFUMEhKd1A2b0ZzYnV6b05qOW1tNmRjVFlCYmxSWEVRTmt4RU96dGcrR3cy?=
 =?utf-8?B?UHAxWmw2OTVHc2RqOGJRRmNndWJJY3YzbTEyTThRMDhLSmtoTEZKMHJ2cG9p?=
 =?utf-8?B?VkQ3VXBvVjgzVWlCc1ZBWCtlYWxBTkxMOEhuMEFVaHJ6MXA3MG0zRkgrY0x4?=
 =?utf-8?B?L3JPSWZqNkNLa0Z4TFV0bVNSTXQ2clFjZHZkMHdZVTV0QWk3WVhHS1grbm1M?=
 =?utf-8?B?U0dtU1pwNjlCcHkzaFRZb3NodFFreFVaZlVMN3pTQ3dLeWd2cUNVdnY0eE8r?=
 =?utf-8?B?WU5zaWZUdG1VLzkrNzEzeUI0QnN0TDVtTTFkYksyOTJPaEFBdjc1NURwTzc2?=
 =?utf-8?B?MmUydHpMRFhwM28rUS8yOURPNnk0UUhuaDlWU2pFQ0JTc09IWXRBSFBGYTNJ?=
 =?utf-8?B?bXhJWTJUbVl1RXR2TGNyVjNjSktPTlU1RmZFeXlqWGJxVU5EVTZQNHl6eG5r?=
 =?utf-8?B?OUdoT2J4SE55SlVacDF0UHY4OUV2QlNJN0w4QjJkWXZiR29oUGNJTU53YUs1?=
 =?utf-8?B?QWNBWlBXaXR0cStac3VyUFFyRS9GWUxjV21SenplaGc2ODFkUTZPVVMrbFJ5?=
 =?utf-8?B?T2hlMHl6RUhQekpxTDNteDNRbkRrNU1YblZGNFpvMlRxVWhRNnFPcXVRV3pi?=
 =?utf-8?B?UGNDdlFJTU93MjFaZTdaQW4rNEk5NVhucGgyOXFxcjRUMjF0cURKaGZUNmVj?=
 =?utf-8?B?SjVJcnIzOU9xWVZEN3hXb2tlcGlCckJlbThHclorMXJNYmx4V1VvTkdSY2Fk?=
 =?utf-8?B?dnJHUzVLVzZSWm8yMFdTT25Pd2kzUDY2bHY1RGVXeHAvWk9Oem9BMHJKRGpU?=
 =?utf-8?B?d2lWVlh6SUZsM0t4dFZJTDhiaGtGSmhHaGZWWVducHVvdjRYcGgrWU1VcWJM?=
 =?utf-8?B?OE5UVkVjaVYydU1mWC9zMEFoWURVOG9yUk94L2dlZzVGVjNFSzFtUVFZTGJh?=
 =?utf-8?B?RDV2RzZGdDNTWU9QZTNyQ3paaVNNSXIydzgxVFNGQ1FrRk5xb081emdhQlVi?=
 =?utf-8?B?OEFOU1hCQ2pGeTY2VDgxRGhhT1dodk04T2ZvTjgrNXg3cEFQMkxicXl6NzBV?=
 =?utf-8?Q?R+gst3DEQpoMYpSaExfBYSSGu?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81f0e1dd-ddec-42e4-78ad-08dd9927e138
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 11:57:51.9296
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4IkD98O0lcETRaDCTGGQsVyKkWHaf+M3tqD7lhjUaCLzgcThfDsLRdQQFCzLN6AX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7570
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.77:from];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,honor.com,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.107.243.77:from];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 57E983F68D
X-Spamd-Bar: ----
Message-ID-Hash: KNOCPIXJ64NUWU4LNATBXOC5I6VBC7I2
X-Message-ID-Hash: KNOCPIXJ64NUWU4LNATBXOC5I6VBC7I2
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "jstultz@google.com" <jstultz@google.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>, "amir73il@gmail.com" <amir73il@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dmabuf/heaps: implement DMA_BUF_IOCTL_RW_FILE for system_heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KNOCPIXJ64NUWU4LNATBXOC5I6VBC7I2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8yMi8yNSAxMDowMiwgd2FuZ3RhbyB3cm90ZToNCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+PiBGcm9tOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQo+PiBTZW50OiBXZWRuZXNkYXksIE1heSAyMSwgMjAyNSA3OjU3IFBNDQo+PiBUbzogd2Fu
Z3RhbyA8dGFvLndhbmd0YW9AaG9ub3IuY29tPjsgVC5KLiBNZXJjaWVyDQo+PiA8dGptZXJjaWVy
QGdvb2dsZS5jb20+DQo+PiBDYzogc3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc7IGJlbmphbWluLmdh
aWduYXJkQGNvbGxhYm9yYS5jb207DQo+PiBCcmlhbi5TdGFya2V5QGFybS5jb207IGpzdHVsdHpA
Z29vZ2xlLmNvbTsgbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnOw0KPj4gZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnOyBsaW51
eC0NCj4+IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IHdhbmdiaW50aWFuKEJpbnRpYW5XYW5nKQ0K
Pj4gPGJpbnRpYW4ud2FuZ0Bob25vci5jb20+OyB5aXBlbmd4aWFuZyA8eWlwZW5neGlhbmdAaG9u
b3IuY29tPjsgbGl1bHUNCj4+IDAwMDEzMTY3IDxsaXVsdS5saXVAaG9ub3IuY29tPjsgaGFuZmVu
ZyAwMDAxMjk4NSA8ZmVuZy5oYW5AaG9ub3IuY29tPjsNCj4+IGFtaXI3M2lsQGdtYWlsLmNvbQ0K
Pj4gU3ViamVjdDogUmU6IFtQQVRDSCAyLzJdIGRtYWJ1Zi9oZWFwczogaW1wbGVtZW50DQo+PiBE
TUFfQlVGX0lPQ1RMX1JXX0ZJTEUgZm9yIHN5c3RlbV9oZWFwDQo+Pg0KPj4gT24gNS8yMS8yNSAx
MjoyNSwgd2FuZ3RhbyB3cm90ZToNCj4+PiBbd2FuZ3Rhb10gSSBwcmV2aW91c2x5IGV4cGxhaW5l
ZCB0aGF0DQo+Pj4gcmVhZC9zZW5kZmlsZS9zcGxpY2UvY29weV9maWxlX3JhbmdlDQo+Pj4gc3lz
Y2FsbHMgY2FuJ3QgYWNoaWV2ZSBkbWFidWYgZGlyZWN0IElPIHplcm8tY29weS4NCj4+DQo+PiBB
bmQgd2h5IGNhbid0IHlvdSB3b3JrIG9uIGltcHJvdmluZyB0aG9zZSBzeXNjYWxscyBpbnN0ZWFk
IG9mIGNyZWF0aW5nIGEgbmV3DQo+PiBJT0NUTD8NCj4+DQo+IFt3YW5ndGFvXSBBcyBJIG1lbnRp
b25lZCBpbiBwcmV2aW91cyBlbWFpbHMsIHRoZXNlIHN5c2NhbGxzIGNhbm5vdA0KPiBhY2hpZXZl
IGRtYWJ1ZiB6ZXJvLWNvcHkgZHVlIHRvIHRlY2huaWNhbCBjb25zdHJhaW50cy4NCg0KWWVhaCwg
YW5kIHdoeSBjYW4ndCB5b3Ugd29yayBvbiByZW1vdmluZyB0aG9zZSB0ZWNobmljYWwgY29uc3Ry
YWlucz8NCg0KV2hhdCBpcyBibG9ja2luZyB5b3UgZnJvbSBpbXByb3ZpbmcgdGhlIHNlbmRmaWxl
IHN5c3RlbSBjYWxsIG9yIHByb3Bvc2luZyBhIHBhdGNoIHRvIHJlbW92ZSB0aGUgY29weV9maWxl
X3JhbmdlIHJlc3RyaWN0aW9ucz8NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KIENvdWxkIHlv
dQ0KPiBzcGVjaWZ5IHRoZSB0ZWNobmljYWwgcG9pbnRzLCBjb2RlLCBvciBwcmluY2lwbGVzIHRo
YXQgbmVlZA0KPiBvcHRpbWl6YXRpb24/IA0KPiANCj4gTGV0IG1lIGV4cGxhaW4gYWdhaW4gd2h5
IHRoZXNlIHN5c2NhbGxzIGNhbid0IHdvcms6DQo+IDEuIHJlYWQoKSBzeXNjYWxsDQo+ICAgIC0g
ZG1hYnVmIGZvcHMgbGFja3MgcmVhZCBjYWxsYmFjayBpbXBsZW1lbnRhdGlvbi4gRXZlbiBpZiBp
bXBsZW1lbnRlZCwNCj4gICAgICBmaWxlX2ZkIGluZm8gY2Fubm90IGJlIHRyYW5zZmVycmVkDQo+
ICAgIC0gcmVhZChmaWxlX2ZkLCBkbWFidWZfcHRyLCBsZW4pIHdpdGggcmVtYXBfcGZuX3Jhbmdl
LWJhc2VkIG1tYXANCj4gICAgICBjYW5ub3QgYWNjZXNzIGRtYWJ1Zl9idWYgcGFnZXMsIGZvcmNp
bmcgYnVmZmVyLW1vZGUgcmVhZHMNCj4gDQo+IDIuIHNlbmRmaWxlKCkgc3lzY2FsbA0KPiAgICAt
IFJlcXVpcmVzIENQVSBjb3B5IGZyb20gcGFnZSBjYWNoZSB0byBtZW1vcnkgZmlsZSh0bXBmcy9z
aG1lbSk6DQo+ICAgICAgW0RJU0tdIC0tRE1BLS0+IFtwYWdlIGNhY2hlXSAtLUNQVSBjb3B5LS0+
IFtNRU1PUlkgZmlsZV0NCj4gICAgLSBDUFUgb3ZlcmhlYWQgKGJvdGggYnVmZmVyL2RpcmVjdCBt
b2RlcyBpbnZvbHZlIGNvcGllcyk6DQo+ICAgICAgNTUuMDglIGRvX3NlbmRmaWxlDQo+ICAgICB8
LSA1NS4wOCUgZG9fc3BsaWNlX2RpcmVjdA0KPiAgICAgfC18LSA1NS4wOCUgc3BsaWNlX2RpcmVj
dF90b19hY3Rvcg0KPiAgICAgfC18LXwtIDIyLjUxJSBjb3B5X3NwbGljZV9yZWFkDQo+ICAgICB8
LXwtfC18LSAxNi41NyUgZjJmc19maWxlX3JlYWRfaXRlcg0KPiAgICAgfC18LXwtfC18LSAxNS4x
MiUgX19pb21hcF9kaW9fcncNCj4gICAgIHwtfC18LSAzMi4zMyUgZGlyZWN0X3NwbGljZV9hY3Rv
cg0KPiAgICAgfC18LXwtfC0gMzIuMTElIGl0ZXJfZmlsZV9zcGxpY2Vfd3JpdGUNCj4gICAgIHwt
fC18LXwtfC0gMjguNDIlIHZmc19pdGVyX3dyaXRlDQo+ICAgICB8LXwtfC18LXwtfC0gMjguNDIl
IGRvX2l0ZXJfd3JpdGUNCj4gICAgIHwtfC18LXwtfC18LXwtIDI4LjM5JSBzaG1lbV9maWxlX3dy
aXRlX2l0ZXINCj4gICAgIHwtfC18LXwtfC18LXwtfC0gMjQuNjIlIGdlbmVyaWNfcGVyZm9ybV93
cml0ZQ0KPiAgICAgfC18LXwtfC18LXwtfC18LXwtIDE4Ljc1JSBfX3BpX21lbW1vdmUNCj4gDQo+
IDMuIHNwbGljZSgpIHJlcXVpcmVzIG9uZSBlbmQgdG8gYmUgYSBwaXBlLCBpbmNvbXBhdGlibGUg
d2l0aCByZWd1bGFyIGZpbGVzIG9yIGRtYWJ1Zi4NCj4gDQo+IDQuIGNvcHlfZmlsZV9yYW5nZSgp
DQo+ICAgIC0gQmxvY2tlZCBieSBjcm9zcy1GUyByZXN0cmljdGlvbnMgKEFtaXIncyBjb21taXQg
ODY4ZjlmMmY4ZTAwKQ0KPiAgICAtIEV2ZW4gd2l0aG91dCB0aGlzIHJlc3RyaWN0aW9uLCBFdmVu
IHdpdGhvdXQgcmVzdHJpY3Rpb25zLCBpbXBsZW1lbnRpbmcNCj4gICAgICB0aGUgY29weV9maWxl
X3JhbmdlIGNhbGxiYWNrIGluIGRtYWJ1ZiBmb3BzIHdvdWxkIG9ubHkgYWxsb3cgZG1hYnVmIHJl
YWQNCj4gCSBmcm9tIHJlZ3VsYXIgZmlsZXMuIFRoaXMgaXMgYmVjYXVzZSBjb3B5X2ZpbGVfcmFu
Z2UgcmVsaWVzIG9uDQo+IAkgZmlsZV9vdXQtPmZfb3AtPmNvcHlfZmlsZV9yYW5nZSwgd2hpY2gg
Y2Fubm90IHN1cHBvcnQgZG1hYnVmIHdyaXRlDQo+IAkgb3BlcmF0aW9ucyB0byByZWd1bGFyIGZp
bGVzLg0KPiANCj4gVGVzdCByZXN1bHRzIGNvbmZpcm0gdGhlc2UgbGltaXRhdGlvbnM6DQo+IFQu
Si4gTWVyY2llcidzIDFHIGZyb20gZXh0NCBvbiA2LjEyLjIwIHwgcmVhZC9zZW5kZmlsZSAobXMp
IHcvIDMgPiBkcm9wX2NhY2hlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0t
LS0tLS0tLS0tLQ0KPiB1ZG1hYnVmIGJ1ZmZlciByZWFkICAgICB8IDEyMTANCj4gdWRtYWJ1ZiBk
aXJlY3QgcmVhZCAgICAgfCA2NzENCj4gdWRtYWJ1ZiBidWZmZXIgc2VuZGZpbGUgfCAxMDk2DQo+
IHVkbWFidWYgZGlyZWN0IHNlbmRmaWxlIHwgMjM0MA0KPiANCj4gTXkgM0dIeiBDUFUgdGVzdHMg
KGNhY2hlIGNsZWFyZWQpOg0KPiBNZXRob2QgICAgICAgICAgICAgICAgfCBhbGxvYyB8IHJlYWQg
IHwgdnMuICglKQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiB1ZG1hYnVmIGJ1ZmZlciByZWFkICAgfCAxMzUgICB8IDU0NiAgIHwgMTgwJQ0KPiB1
ZG1hYnVmIGRpcmVjdCByZWFkICAgfCAxNTkgICB8IDMwMCAgIHwgOTklDQo+IHVkbWFidWYgYnVm
ZmVyIHNlbmRmaWxlIHwgMTM0IHwgMzAzICAgfCAxMDAlDQo+IHVkbWFidWYgZGlyZWN0IHNlbmRm
aWxlIHwgMTQxIHwgOTEyICAgfCAzMDElDQo+IGRtYWJ1ZiBidWZmZXIgcmVhZCAgICB8IDIyICAg
IHwgMzYyICAgfCAxMTklDQo+IG15IHBhdGNoIGRpcmVjdCByZWFkICB8IDI5ICAgIHwgMjY1ICAg
fCA4NyUNCj4gDQo+IE15IDFHSHogQ1BVIHRlc3RzIChjYWNoZSBjbGVhcmVkKToNCj4gTWV0aG9k
ICAgICAgICAgICAgICAgIHwgYWxsb2MgfCByZWFkICB8IHZzLiAoJSkNCj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gdWRtYWJ1ZiBidWZmZXIgcmVh
ZCAgIHwgNTUyICAgfCAyMDY3ICB8IDE5OCUNCj4gdWRtYWJ1ZiBkaXJlY3QgcmVhZCAgIHwgNTQw
ICAgfCA2MjcgICB8IDYwJQ0KPiB1ZG1hYnVmIGJ1ZmZlciBzZW5kZmlsZSB8IDQ5NyB8IDEwNDUg
IHwgMTAwJQ0KPiB1ZG1hYnVmIGRpcmVjdCBzZW5kZmlsZSB8IDUyNyB8IDIzMzAgIHwgMjIzJQ0K
PiBkbWFidWYgYnVmZmVyIHJlYWQgICAgfCA0MCAgICB8IDExMTEgIHwgMTA2JQ0KPiBwYXRjaCBk
aXJlY3QgcmVhZCAgICAgfCA0NCAgICB8IDMxMCAgIHwgMzAlDQo+IA0KPiBUZXN0IG9ic2VydmF0
aW9ucyBhbGlnbiB3aXRoIGV4cGVjdGF0aW9uczoNCj4gMS4gZG1hYnVmIGJ1ZmZlciByZWFkIHJl
cXVpcmVzIHNsb3cgQ1BVIGNvcGllcw0KPiAyLiB1ZG1hYnVmIGRpcmVjdCByZWFkIGFjaGlldmVz
IHplcm8tY29weSBidXQgaGFzIHBhZ2UgcmV0cmlldmFsDQo+ICAgIGxhdGVuY3kgZnJvbSB2YWRk
cg0KPiAzLiB1ZG1hYnVmIGJ1ZmZlciBzZW5kZmlsZSBzdWZmZXJzIENQVSBjb3B5IG92ZXJoZWFk
DQo+IDQuIHVkbWFidWYgZGlyZWN0IHNlbmRmaWxlIGNvbWJpbmVzIENQVSBjb3BpZXMgd2l0aCBm
cmVxdWVudCBETUENCj4gICAgb3BlcmF0aW9ucyBkdWUgdG8gc21hbGwgcGlwZSBidWZmZXJzDQo+
IDUuIGRtYWJ1ZiBidWZmZXIgcmVhZCBhbHNvIHJlcXVpcmVzIENQVSBjb3BpZXMNCj4gNi4gTXkg
ZGlyZWN0IHJlYWQgcGF0Y2ggZW5hYmxlcyB6ZXJvLWNvcHkgd2l0aCBiZXR0ZXIgcGVyZm9ybWFu
Y2UNCj4gICAgb24gbG93LXBvd2VyIENQVXMNCj4gNy4gdWRtYWJ1ZiBjcmVhdGlvbiB0aW1lIHJl
bWFpbnMgcHJvYmxlbWF0aWMgKGFzIHlvdeKAmXZlIG5vdGVkKS4NCj4gDQo+Pj4gTXkgZm9jdXMg
aXMgZW5hYmxpbmcgZG1hYnVmIGRpcmVjdCBJL08gZm9yIFtyZWd1bGFyIGZpbGVdIDwtLURNQS0t
Pg0KPj4+IFtkbWFidWZdIHplcm8tY29weS4NCj4+DQo+PiBZZWFoIGFuZCB0aGF0IGZvY3VzIGlz
IHdyb25nLiBZb3UgbmVlZCB0byB3b3JrIG9uIGEgZ2VuZXJhbCBzb2x1dGlvbiB0byB0aGUNCj4+
IGlzc3VlIGFuZCBub3Qgc3BlY2lmaWMgdG8geW91ciBwcm9ibGVtLg0KPj4NCj4+PiBBbnkgQVBJ
IGFjaGlldmluZyB0aGlzIHdvdWxkIHdvcmsuIEFyZSB0aGVyZSBvdGhlciB1QVBJcyB5b3UgdGhp
bmsNCj4+PiBjb3VsZCBoZWxwPyBDb3VsZCB5b3UgcmVjb21tZW5kIGV4cGVydHMgd2hvIG1pZ2h0
IG9mZmVyIHN1Z2dlc3Rpb25zPw0KPj4NCj4+IFdlbGwgb25jZSBtb3JlOiBFaXRoZXIgd29yayBv
biBzZW5kZmlsZSBvciBjb3B5X2ZpbGVfcmFuZ2Ugb3IgZXZlbnR1YWxseQ0KPj4gc3BsaWNlIHRv
IG1ha2UgaXQgd2hhdCB5b3Ugd2FudCB0byBkby4NCj4+DQo+PiBXaGVuIHRoYXQgaXMgZG9uZSB3
ZSBjYW4gZGlzY3VzcyB3aXRoIHRoZSBWRlMgcGVvcGxlIGlmIHRoYXQgYXBwcm9hY2ggaXMNCj4+
IGZlYXNpYmxlLg0KPj4NCj4+IEJ1dCBqdXN0IGJ5cGFzc2luZyB0aGUgVkZTIHJldmlldyBieSBp
bXBsZW1lbnRpbmcgYSBETUEtYnVmIHNwZWNpZmljIElPQ1RMDQo+PiBpcyBhIE5PLUdPLiBUaGF0
IGlzIGNsZWFybHkgbm90IHNvbWV0aGluZyB5b3UgY2FuIGRvIGluIGFueSB3YXkuDQo+IFt3YW5n
dGFvXSBUaGUgaXNzdWUgaXMgdGhhdCBvbmx5IGRtYWJ1ZiBsYWNrcyBEaXJlY3QgSS9PIHplcm8t
Y29weSBzdXBwb3J0LiBUbXBmcy9zaG1lbQ0KPiBhbHJlYWR5IHdvcmsgd2l0aCBEaXJlY3QgSS9P
IHplcm8tY29weS4gQXMgZXhwbGFpbmVkLCBleGlzdGluZyBzeXNjYWxscyBvcg0KPiBnZW5lcmlj
IG1ldGhvZHMgY2FuJ3QgZW5hYmxlIGRtYWJ1ZiBkaXJlY3QgSS9PIHplcm8tY29weSwgd2hpY2gg
aXMgd2h5IEkNCj4gcHJvcG9zZSBhZGRpbmcgYW4gSU9DVEwgY29tbWFuZC4NCj4gDQo+IEkgcmVz
cGVjdCB5b3VyIHBlcnNwZWN0aXZlLiBDb3VsZCB5b3UgY2xhcmlmeSBzcGVjaWZpYyB0ZWNobmlj
YWwgYXNwZWN0cywNCj4gY29kZSByZXF1aXJlbWVudHMsIG9yIGltcGxlbWVudGF0aW9uIHByaW5j
aXBsZXMgZm9yIG1vZGlmeWluZyBzZW5kZmlsZSgpDQo+IG9yIGNvcHlfZmlsZV9yYW5nZSgpPyBU
aGlzIHdvdWxkIGhlbHAgYWR2YW5jZSBvdXIgZGlzY3Vzc2lvbi4NCj4gDQo+IFRoYW5rIHlvdSBm
b3IgZW5nYWdpbmcgaW4gdGhpcyBkaWFsb2d1ZS4NCj4gDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENo
cmlzdGlhbi4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==

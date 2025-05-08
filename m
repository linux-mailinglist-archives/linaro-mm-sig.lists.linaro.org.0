Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E19AAF58D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 10:22:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 939C0461C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 08:22:56 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2088.outbound.protection.outlook.com [40.107.244.88])
	by lists.linaro.org (Postfix) with ESMTPS id 6AB58459A3
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 08:22:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=dL5hfY48;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.88 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LcDs4iCVMHjBApJNoFQlNWAXpqb2opbHtseNhkRJ5q8Lk3qNSzpKwv4r++JwKzWyJ9dGjPf5+31tZ1sy9axqHUFo3J5tW1bSTZfHxiRS0DbemLfXLaiiRTSd9Z8+0a9XLI/Pphjq2yo7+k4X/eJywxgOaT/1/y/i20R88uynndOlcXHZFVzeHoiQiGixj2AQn4W9jgYq6mP9fw12RgfcjgEglVOCO99CrZhhqbQm8IiMXgRtVN9a3p82BUvQK17QcHLbne9IQk1SN6XMnZ9ukt8YjdJELjcp6MIznQ0Tv/qljFuV89/zN1KEJotvcuxXw0Dz3XGMIuQrwwxkO2VHgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WdH32izubHCSuysJ9dsU7+XehuSur2VcOjgE4iM6+34=;
 b=oGLZs2iQp9RdXdSnp1eMVEkANNtdkKiRqtjbI53MXpZE92WoT0Y9Y4oiEUR9nYG/hxn452+d1xJz2fSSdVoc9AITyfBg+KaJ8WsqlWykDErtuqe+osTp5l2VTaeSdeAkMC4G9yw07+HwzTku+FH1qmW8rrHr9jlp6tjBuZrQ+Vl1+Wys0gAoFJ7Olm11M1jFkYQMHO0kCqvwVY8oGE9oPnte2YC9IzyaxmosQ1lUnIJIanlYwzOtOMuFsijetWh+wmZHDdhFJNsY2kq3er0LLXl56KkafAQi3y1uT7Ee6zA5gFMUqF2TmSt7e1DcCTYAAeFxJk1DX8LdTbRgDQv0ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WdH32izubHCSuysJ9dsU7+XehuSur2VcOjgE4iM6+34=;
 b=dL5hfY48Jf8zZO1+2xUM0p019K3YqMZpxtHcXQqB0MMmu28UVWdDx/vjrgn9ZqQH/JMGSO3xSM6E4ThHBZTqpQSxEJPhE615EOglZenFKq8HDJTUiWwlaFsijub7W6xF5Dq1nMIGX1hMGoqK4VqjeyQ8aXykOU/UFFnueZ7pCTM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB9469.namprd12.prod.outlook.com (2603:10b6:806:45a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.20; Thu, 8 May
 2025 08:22:38 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8678.028; Thu, 8 May 2025
 08:22:38 +0000
Message-ID: <dc21ab2d-071d-4596-a339-5abcfd01eca6@amd.com>
Date: Thu, 8 May 2025 10:22:32 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>
References: <20250507001036.2278781-1-tjmercier@google.com>
 <20250507001036.2278781-3-tjmercier@google.com>
 <01e0e545-f297-466c-a973-e479fcbd934f@amd.com>
 <CABdmKX3ZjeZmT=Fj_TYfpXouM6AGigcQPH7ygf3puFQip0DQ_g@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX3ZjeZmT=Fj_TYfpXouM6AGigcQPH7ygf3puFQip0DQ_g@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0310.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f6::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB9469:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a3fa549-0c4f-47dc-478e-08dd8e097e82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dzlHNDFXSjFhWHFVaFBPdldEWUdOV2xaci9kdWFDMGh2UHlzRG1jWVdDRkxi?=
 =?utf-8?B?Y2l6Qk0vcVkrYUNZZ3AxQVNrR09mSzVDMUVHZFJRZEtoU1VYVFNWSUVvWG1q?=
 =?utf-8?B?N29hRmJGbU5lV1czdzVybnlUNnZqcEFZSjBHVGJrRWdQTVVkUXJOTlVoWkla?=
 =?utf-8?B?Q3pEL2dqS3B1eVpTUHFheHk2eGZrOWtOam4vbmVrYkdoWFVjREZZYitWRXp6?=
 =?utf-8?B?YVpUMlFDbkpKaTNJRDluOVdaVnRSYUMzUm9BRk5aY1BiK1B1YnhIWkRtK28x?=
 =?utf-8?B?cmNoU3VSelgyNTM3T3JYSm1sc0ppOWgrU0xMZ0dPSWNaZ3BwTTBZVnVsSGp6?=
 =?utf-8?B?M0I5WUthZ2NVS0p5RExPL2JXZ3FmSHZVS2FFczRtSS9KR0VyRCtyWDdmd1VB?=
 =?utf-8?B?SUZYenduQ1pjZGhpYWdrek8xSHNHV1JBUktEc0ZETk9QL004R3hlWnRabDhk?=
 =?utf-8?B?dkRVVjdTN2kwc3ZOYXp5UFVOQm9BOXJ5QnB0dm5XamRqOVBuR203cHZDQ0Zi?=
 =?utf-8?B?elFmTFI3Zi9ZaW56SXFwOUJjbFBFaXhTSFpEblp3OFdlTWtxdUFTV3BHVG9R?=
 =?utf-8?B?ZysvTW1lSmtsVnliSldkWllZRDFmZDJDMGdvRjAxZ2R3aUw0bG9nUnJncVc2?=
 =?utf-8?B?aUlFa25OcVJvSDdSYzZzTHJsWHRDRmUramVmZnFDTG5saXNaWllJVDFJWG9S?=
 =?utf-8?B?VjNxUGpJOFY4K0V3aE00QXhvOFpDWjZYOG9yYWUwcFY0TkdPVFhlY3g4bWNY?=
 =?utf-8?B?WjZqV3JTMzdTZXVubXlnZ2ZBV2xUSndya255S2dXc0R4Q3ljL2dMVWVXYVd6?=
 =?utf-8?B?MVFEeGFHWUxOcnczQ2t5N0xIcjZNS3NzUGtkWHdiZ1Z6OVFmVmRPNkNZL3NO?=
 =?utf-8?B?VFZCYVhuWTFqUlcrMmFEaEcrdnRKKzQyd01ZTk5BUXkwSUJZZlZuRkMxVkEx?=
 =?utf-8?B?czhhMHVjU09GbG9TbThRSkxnVUVMM2FjYmd6YzZyV3ZRbzBRTEQwdXM1MnBD?=
 =?utf-8?B?cm13SHpRMlB2WkFRRDBxcHZaQmpkclcrNFZ1a1N6M2Uxalp4NDBVZExHOVV5?=
 =?utf-8?B?S3pNcCtZOHBGWWx6eTJVcWNhYXV5MXZEc0ttNTh3WCtsQVNHRHo4SlZxcXVN?=
 =?utf-8?B?Tjh4aTY1ZlBNYnVjSU0vY1FNM01iOExFczJpWWd3TWY4bU93eDZGU2VtRDkv?=
 =?utf-8?B?T3NUbE5XQUJiU2dRVTRzajA1eHJUeGpXZjlFaWlZcDJ3aVJxWlI2SVJUbmtp?=
 =?utf-8?B?VUhUWHNoUytYM0NmMFF4VDNDdDJCcmtjTEt0UXZvc2hZZjF2WlBFN1hOU2Vi?=
 =?utf-8?B?b2JadE1JaXA0U0ROL0plMnJUUkloa2FSMUhlTTRaeVN6N3AzMWFUdURzdXVO?=
 =?utf-8?B?bUxxZklMT01UdkttMTBIM2tMZ215T2hmQnlYcVVaMnY2Zi9WTzkraEM0RE91?=
 =?utf-8?B?elc3MUhscWtKSTFrallIdG5ESkhwSzJBcDk4NUpRVGM3OUJSRFMzZERzMEhh?=
 =?utf-8?B?UFNYZUZNbENJZ2ZGV1BXMDNrZmxKSW5vQkRFUWxKSkR2NFlJWldGRkFvVy9p?=
 =?utf-8?B?dXNxZkc0bVN4UXU1NFFLKzNITnhlU1M1S3dyOHZmYU83ZEx0SXlYaDhiZVdm?=
 =?utf-8?B?ZE4zWGVjR3hMcUQ3YkxXb1FiSDlzS2FsakM5MFFvakZlUkRHWThLZVpZL0F6?=
 =?utf-8?B?c01LOCtpVGJBKy9sSjJvZWhRcXgzQ2wzRmZxcFowM2tEZ09URFNTOEVxR2pt?=
 =?utf-8?B?Tng1bW1PTjBnRW54UzhvM1dxbkNNeFM5QTM0TlQwN0REU3VJNWJYR0YrOEZn?=
 =?utf-8?B?bkNwaWVzVm5VNU1EdjdJMVRuc21kUnBnc2tvVVZJQ3g2ejk4WWpqN1J4VHpt?=
 =?utf-8?B?L3ZZNHhQa284enBNQ2hEaVpKejNYOXdaNWYrbm9FclBuZXJUVzI3YlozUU4r?=
 =?utf-8?Q?5h4+v2T5Flg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VzRZOFhFUUp6RXBnL0VKWndWKzltUFhUUDlZWXVmL1I4eGVaNzA3b0tTdFlo?=
 =?utf-8?B?TlNoZ083d0lHdWFCdXdkMG1TbUZxcXdLUjlvSXJERmhsN2dQUXVtUU9GQWhy?=
 =?utf-8?B?MjJOM0Rad2pnYlJFbnR0Tk55Y0VQVE93WlpPUmpjYkRPdlRvUWVzWVRpTjlu?=
 =?utf-8?B?OWw0UkhYUU9ldEZDc1JCaXFoZnJzdFVKVVpCWUQ1SGsxaTBISmNYTU1weEVJ?=
 =?utf-8?B?ZVNsUlA1dFhwS0NPMkNHbTFDVHpBdjh5R2ZhK0JmK01oaUFNK2E5T0g3M0J2?=
 =?utf-8?B?c0VJbHhmZXpYQmhsM1MrN010SlhvcThGT3E1bldlU1lkcUpTOFh4b3Y5bnhK?=
 =?utf-8?B?cWx0djIyZ3M4U1BFcEwxTGRpbFZnU1BPUFJsbXQrcUlQT2ozcFpZd0hpWmds?=
 =?utf-8?B?U2FTSEpnWFAwTG1yUUNSQnRITytzZ2dVbWdTZExObEQvVXB2Y2t0Vm9Cd2I5?=
 =?utf-8?B?cnU1OU5DaEZHRk53RXBiYk56VzBiY0pKZkhWdVJDQm1jeXEvc3JxMDFvdHVs?=
 =?utf-8?B?V3NYZElGZUx5YkViZ1h2b0ptTnNFdHFpdUJ0R01Oa1BKQVlHUmhuZDBzY3Zr?=
 =?utf-8?B?YytRYnJieVNSV1FyZ0dPVVBWNTIraHRUb25XQUhYWjYrS01QR0prRFcvL0xY?=
 =?utf-8?B?RjNzSnE0WkJtSkJVL0xGK3g0QWwxd1YyOUV2eWZZeXdTVURxMmlTK29hdEhX?=
 =?utf-8?B?enVmWHA3c1dTVFh4UWVObHlOWktleXZRbGJMM3FRODNSR2tXZS9vTUx1ZStj?=
 =?utf-8?B?dkc4S2k4blRWMU90eFc3WmhpcDhDWUkya2hZOWdXSmFXNno0aWtiVWZ6UEgw?=
 =?utf-8?B?QzZNL25ISTBRRlhZa1k3cy9mQTB2enFFekx0RVAzKzc1aERWOGhvNm1PVHE3?=
 =?utf-8?B?VGdVdWI4K213emVpQmh6ZlBUcDl1dUlYeE95cE9GNW5iTUUxVk0rbGxaYlRC?=
 =?utf-8?B?K1ZEYXVhQk5kNXV3T2JpanlQcnZxYmYraGRjRUNITjV0UjYwbWx0OHlFMnpN?=
 =?utf-8?B?a0R3TEZmVFR1OTZUR0h1bDRFOVBXM1c3dmZuSkRVNW1UM3dPNXFyTmVLWmtn?=
 =?utf-8?B?NGVYMVJQcmdyRUFGdFI0MEdNUisyNDdlWG1waFdHZXh1UmNFaU9jQTR1TEw2?=
 =?utf-8?B?NlhEOVd3bkdocys0aHd0UHFFcml0N2ZXN3dMOUNvVjZTcXhGNmpHNmo4Y3hj?=
 =?utf-8?B?d1p1dk9pejJEVjhvSWFKSGw4dmsvTFVrbVJuSkJ2RllTSmdaYmdlUTdPSnd2?=
 =?utf-8?B?UW9Db1ZWMjNDdWs3ekpUZUd3ejRvTWRFY2Z3TVcrZ3JTQjVWWHpqM21Dd0Rk?=
 =?utf-8?B?QjhQcG5rWUZHY3R2WFk2bXIvZDJkeVhPVkQyYTEzTEpDeWdYT2IrTGN4SkZP?=
 =?utf-8?B?RTdLWnJSV2xvL2F0TlQxaWxFSUUyK1lDQ09SRUNpWmhyRFBUTHNWdmV2Zlh1?=
 =?utf-8?B?aHpFU0dGcVdQUFRZUVpYNXh6MTg3TWtyMTk5OGVuRjQwT2dhSjVJRHBwK1Ur?=
 =?utf-8?B?MElCcDhiMU1Rc1FuSWVGeERvRWY3S202dFVleXBtRnJ2R0pQOHZJVzJteHVt?=
 =?utf-8?B?S0diUHJPRG45aERyak83d1oxRndMWWVaTEptaGo3STI5emlCVEMrT3BqSlBO?=
 =?utf-8?B?M3VxTmowMUtQNGRPc3FBOW8wK01hRitqMnArcWJLd254dVJZMWVQbWtMbEpU?=
 =?utf-8?B?K3ZhckNmeWxab1doWThydU1KMHVld3Q4bHpYTU9VYlllWnFTbEpKOWhqbjhT?=
 =?utf-8?B?VlVzbndTNFUydXN2ZWRxVTdmVHMyWWxFelJlZmdmWHVVeXZLZHhDR3FKNkpI?=
 =?utf-8?B?NzZsTlNOWEQ5UUxURkh1VUpHdG5MSGFQT29XU0JOaWRrN0VrOGFUdmYxQ2tX?=
 =?utf-8?B?RnB5aC9EU2s0cHFEZTlWc21CRDNNcXljRlhJdzZGOFNLMDZ5MlllUWpnZ2sw?=
 =?utf-8?B?bUpuSUM2c0tGN3k0ZDRjMjE1MTNoQVhoZ05NMXNKbEtiR3pna2ZpaVdnVGF1?=
 =?utf-8?B?Q2Z3MlJVOGxENk1kQ2dzWFQwd2tUYTZNaFFHaFRvRlNzWXc1djlCZ09iZlY2?=
 =?utf-8?B?bGVsQzFZTENHZVkzTFgrODliakYwTGJ3aTVVSURVRzhYcnBxUWZOV20rR1hp?=
 =?utf-8?Q?RxxI=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a3fa549-0c4f-47dc-478e-08dd8e097e82
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 08:22:38.7941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wEhS6JuPdYigGvUiLAXOSNWlL105GSuG3gnkujeUYAHY9R9iMUmht2BwTnlGQpXS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB9469
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6AB58459A3
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.88:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	DNSWL_BLOCKED(0.00)[40.107.244.88:from,2603:10b6:510:13c::22:received];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: PHQZLDC26AKTJTBAKCGADHQUHCK6PBJM
X-Message-ID-Hash: PHQZLDC26AKTJTBAKCGADHQUHCK6PBJM
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, song@kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v3 2/5] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PHQZLDC26AKTJTBAKCGADHQUHCK6PBJM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS83LzI1IDE5OjM2LCBULkouIE1lcmNpZXIgd3JvdGU6DQo+IE9uIFdlZCwgTWF5IDcsIDIw
MjUgYXQgMToxNeKAr0FNIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4gd3JvdGU6DQo+Pg0KPj4gT24gNS83LzI1IDAyOjEwLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+
Pj4gVGhlIGRtYWJ1ZiBpdGVyYXRvciB0cmF2ZXJzZXMgdGhlIGxpc3Qgb2YgYWxsIERNQSBidWZm
ZXJzLg0KPj4+DQo+Pj4gRE1BIGJ1ZmZlcnMgYXJlIHJlZmNvdW50ZWQgdGhyb3VnaCB0aGVpciBh
c3NvY2lhdGVkIHN0cnVjdCBmaWxlLiBBDQo+Pj4gcmVmZXJlbmNlIGlzIHRha2VuIG9uIGVhY2gg
YnVmZmVyIGFzIHRoZSBsaXN0IGlzIGl0ZXJhdGVkIHRvIGVuc3VyZSBlYWNoDQo+Pj4gYnVmZmVy
IHBlcnNpc3RzIGZvciB0aGUgZHVyYXRpb24gb2YgdGhlIGJwZiBwcm9ncmFtIGV4ZWN1dGlvbiB3
aXRob3V0DQo+Pj4gaG9sZGluZyB0aGUgbGlzdCBtdXRleC4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYt
Ynk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+Pj4gLS0tDQo+Pj4gIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAgNjQgKysrKysrKysrKysrKysrKysrKysrKysrDQo+
Pj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgIDMgKysNCj4+PiAga2VybmVsL2JwZi9N
YWtlZmlsZSAgICAgICB8ICAgMyArKw0KPj4+ICBrZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmMgIHwg
MTAyICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+Pj4gIDQgZmlsZXMg
Y2hhbmdlZCwgMTcyIGluc2VydGlvbnMoKykNCj4+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGtlcm5l
bC9icGYvZG1hYnVmX2l0ZXIuYw0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gaW5kZXggOGQxNTE3
ODRlMzAyLi45ZmVlMjc4ODkyNGUgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiBAQCAtMTks
NyArMTksOSBAQA0KPj4+ICAjaW5jbHVkZSA8bGludXgvYW5vbl9pbm9kZXMuaD4NCj4+PiAgI2lu
Y2x1ZGUgPGxpbnV4L2V4cG9ydC5oPg0KPj4+ICAjaW5jbHVkZSA8bGludXgvZGVidWdmcy5oPg0K
Pj4+ICsjaW5jbHVkZSA8bGludXgvbGlzdC5oPg0KPj4+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxl
Lmg+DQo+Pj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPg0KPj4+ICAjaW5jbHVkZSA8bGludXgv
c2VxX2ZpbGUuaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4L3N5bmNfZmlsZS5oPg0KPj4+ICAjaW5j
bHVkZSA8bGludXgvcG9sbC5oPg0KPj4+IEBAIC01NSw2ICs1Nyw2OCBAQCBzdGF0aWMgdm9pZCBf
X2RtYV9idWZfbGlzdF9kZWwoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+PiAgICAgICBtdXRl
eF91bmxvY2soJmRtYWJ1Zl9saXN0X211dGV4KTsNCj4+PiAgfQ0KPj4+DQo+Pj4gKy8qKg0KPj4+
ICsgKiBnZXRfZmlyc3RfZG1hYnVmIC0gYmVnaW4gaXRlcmF0aW9uIHRocm91Z2ggZ2xvYmFsIGxp
c3Qgb2YgRE1BLWJ1ZnMNCj4+DQo+PiBBcyBmYXIgYXMgSSBjYW4gc2VlIHRoYXQgbG9va3MgcmVh
bGx5IGdvb2QuDQo+Pg0KPj4gVGhlIG9ubHkgdGhpbmcgSSdtIHF1ZXN0aW9uaW5nIGEgbGl0dGxl
IGJpdCBpcyB0aGF0IHRoZSBuYW1lIGdldF9maXJzdF9kbWFidWYoKSBqdXN0IGRvZXNuJ3Qgc291
bmQgc28gd2VsbCB0byBtZS4NCj4+DQo+PiBJJ20gYSBmYW4gb2Yga2VlcGluZyB0aGUgb2JqZWN0
IHlvdSB3b3JrIHdpdGggZmlyc3QgaW4gdGhlIG5hbWluZyBhbmQgaXQgc2hvdWxkIHNvbWVob3cg
ZXhwcmVzcyB0aGF0IHRoaXMgaXRlcnMgb3ZlciB0aGUgZ2xvYmFsIGxpc3Qgb2YgYWxsIGJ1ZmZl
cnMuIE1heWJlIHNvbWV0aGluZyBsaWtlIGRtYWJ1Zl9nZXRfZmlyc3RfZ2xvYmFsbHkgb3IgZG1h
YnVmX2dldF9maXJzdF9pbnN0YW5jZS4NCj4+DQo+PiBGZWVsIGZyZWUgdG8gYWRkIG15IHJiIGlm
IGFueSBvZiB0aG9zZSBzdWdnZXN0aW9ucyBhcmUgdXNlZCwgYnV0IEknbSBjb21wbGV0ZWx5IG9w
ZW4gb3RoZXIgaWRlYXMgYXMgd2VsbC4NCj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0K
Pj4NCj4gWWVhaCB5b3UncmUgcmlnaHQuICJmaXJzdCIgaXMgYWN0dWFsbHkgYSBsaXR0bGUgbWlz
bGVhZGluZyB0b28sIHNpbmNlDQo+IHRoZSBtb3N0IHJlY2VudGx5IGV4cG9ydGVkIGJ1ZmZlciB3
aWxsIGJlIGF0IHRoZSBsaXN0IGhlYWQsIG5vdCB0aGUNCj4gb2xkZXN0IGJ1ZmZlci4gQnV0IGJ1
ZmZlciBhZ2Ugb3Igb3JkZXJpbmcgZG9lc24ndCByZWFsbHkgbWF0dGVyIGhlcmUNCj4gYXMgbG9u
ZyBhcyB3ZSBnZXQgdGhyb3VnaCBhbGwgb2YgdGhlbS4NCj4gDQo+IFNvIEknbSB0aGlua2luZyBk
bWFfYnVmX2l0ZXJfYmVnaW4oKSBhbmQgZG1hX2J1Zl9pdGVyX25leHQoKSB3b3VsZCBiZQ0KPiBi
ZXR0ZXIgbmFtZXMuIFNpbWlsYXIgdG8gc2VxX3N0YXJ0IC8gc2VxX25leHQgb3IgYnBmJ3MgaXRl
cl88dHlwZT5fbmV3DQo+IC8gaXRlcl88dHlwZT5fbmV4dC4NCg0KDQpZZWFoLCBkbWFfYnVmX2l0
ZXJfYmVnaW4vbmV4dCB3b3JrcyBmb3IgbWUgYXMgd2VsbC4NCg0KRmVlbCBmcmVlIHRvIGFkZCBt
eSByYiB3aGVuIHlvdSB1c2UgdGhvc2UgbmFtZXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cg0KPiANCj4+PiArICoNCj4+PiArICogUmV0dXJucyB0aGUgZmlyc3QgYnVmZmVyIGluIHRoZSBn
bG9iYWwgbGlzdCBvZiBETUEtYnVmcyB0aGF0J3Mgbm90IGluIHRoZQ0KPj4+ICsgKiBwcm9jZXNz
IG9mIGJlaW5nIGRlc3Ryb3llZC4gSW5jcmVtZW50cyB0aGF0IGJ1ZmZlcidzIHJlZmVyZW5jZSBj
b3VudCB0bw0KPj4+ICsgKiBwcmV2ZW50IGJ1ZmZlciBkZXN0cnVjdGlvbi4gQ2FsbGVycyBtdXN0
IHJlbGVhc2UgdGhlIHJlZmVyZW5jZSwgZWl0aGVyIGJ5DQo+Pj4gKyAqIGNvbnRpbnVpbmcgaXRl
cmF0aW9uIHdpdGggZ2V0X25leHRfZG1hYnVmKCksIG9yIHdpdGggZG1hX2J1Zl9wdXQoKS4NCj4+
PiArICoNCj4+PiArICogUmV0dXJucyBOVUxMIElmIG5vIGFjdGl2ZSBidWZmZXJzIGFyZSBwcmVz
ZW50Lg0KPj4+ICsgKi8NCj4+PiArc3RydWN0IGRtYV9idWYgKmdldF9maXJzdF9kbWFidWYodm9p
ZCkNCj4+PiArew0KPj4+ICsgICAgIHN0cnVjdCBkbWFfYnVmICpyZXQgPSBOVUxMLCAqZG1hYnVm
Ow0KPj4+ICsNCj4+PiArICAgICAvKg0KPj4+ICsgICAgICAqIFRoZSBsaXN0IG11dGV4IGRvZXMg
bm90IHByb3RlY3QgYSBkbWFidWYncyByZWZjb3VudCwgc28gaXQgY2FuIGJlDQo+Pj4gKyAgICAg
ICogemVyb2VkIHdoaWxlIHdlIGFyZSBpdGVyYXRpbmcuIFdlIGNhbm5vdCBjYWxsIGdldF9kbWFf
YnVmKCkgc2luY2UgdGhlDQo+Pj4gKyAgICAgICogY2FsbGVyIG1heSBub3QgYWxyZWFkeSBvd24g
YSByZWZlcmVuY2UgdG8gdGhlIGJ1ZmZlci4NCj4+PiArICAgICAgKi8NCj4+PiArICAgICBtdXRl
eF9sb2NrKCZkbWFidWZfbGlzdF9tdXRleCk7DQo+Pj4gKyAgICAgbGlzdF9mb3JfZWFjaF9lbnRy
eShkbWFidWYsICZkbWFidWZfbGlzdCwgbGlzdF9ub2RlKSB7DQo+Pj4gKyAgICAgICAgICAgICBp
ZiAoZmlsZV9yZWZfZ2V0KCZkbWFidWYtPmZpbGUtPmZfcmVmKSkgew0KPj4+ICsgICAgICAgICAg
ICAgICAgICAgICByZXQgPSBkbWFidWY7DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFr
Ow0KPj4+ICsgICAgICAgICAgICAgfQ0KPj4+ICsgICAgIH0NCj4+PiArICAgICBtdXRleF91bmxv
Y2soJmRtYWJ1Zl9saXN0X211dGV4KTsNCj4+PiArICAgICByZXR1cm4gcmV0Ow0KPj4+ICt9DQo+
Pj4gKw0KPj4+ICsvKioNCj4+PiArICogZ2V0X25leHRfZG1hYnVmIC0gY29udGludWUgaXRlcmF0
aW9uIHRocm91Z2ggZ2xvYmFsIGxpc3Qgb2YgRE1BLWJ1ZnMNCj4+PiArICogQGRtYWJ1ZjogIFtp
bl0gICAgcG9pbnRlciB0byBkbWFfYnVmDQo+Pj4gKyAqDQo+Pj4gKyAqIERlY3JlbWVudHMgdGhl
IHJlZmVyZW5jZSBjb3VudCBvbiB0aGUgcHJvdmlkZWQgYnVmZmVyLiBSZXR1cm5zIHRoZSBuZXh0
DQo+Pj4gKyAqIGJ1ZmZlciBmcm9tIHRoZSByZW1haW5kZXIgb2YgdGhlIGdsb2JhbCBsaXN0IG9m
IERNQS1idWZzIHdpdGggaXRzIHJlZmVyZW5jZQ0KPj4+ICsgKiBjb3VudCBpbmNyZW1lbnRlZC4g
Q2FsbGVycyBtdXN0IHJlbGVhc2UgdGhlIHJlZmVyZW5jZSwgZWl0aGVyIGJ5IGNvbnRpbnVpbmcN
Cj4+PiArICogaXRlcmF0aW9uIHdpdGggZ2V0X25leHRfZG1hYnVmKCksIG9yIHdpdGggZG1hX2J1
Zl9wdXQoKS4NCj4+PiArICoNCj4+PiArICogUmV0dXJucyBOVUxMIElmIG5vIGFkZGl0aW9uYWwg
YWN0aXZlIGJ1ZmZlcnMgYXJlIHByZXNlbnQuDQo+Pj4gKyAqLw0KPj4+ICtzdHJ1Y3QgZG1hX2J1
ZiAqZ2V0X25leHRfZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+Pj4gK3sNCj4+PiAr
ICAgICBzdHJ1Y3QgZG1hX2J1ZiAqcmV0ID0gTlVMTDsNCj4+PiArDQo+Pj4gKyAgICAgLyoNCj4+
PiArICAgICAgKiBUaGUgbGlzdCBtdXRleCBkb2VzIG5vdCBwcm90ZWN0IGEgZG1hYnVmJ3MgcmVm
Y291bnQsIHNvIGl0IGNhbiBiZQ0KPj4+ICsgICAgICAqIHplcm9lZCB3aGlsZSB3ZSBhcmUgaXRl
cmF0aW5nLiBXZSBjYW5ub3QgY2FsbCBnZXRfZG1hX2J1ZigpIHNpbmNlIHRoZQ0KPj4+ICsgICAg
ICAqIGNhbGxlciBtYXkgbm90IGFscmVhZHkgb3duIGEgcmVmZXJlbmNlIHRvIHRoZSBidWZmZXIu
DQo+Pj4gKyAgICAgICovDQo+Pj4gKyAgICAgbXV0ZXhfbG9jaygmZG1hYnVmX2xpc3RfbXV0ZXgp
Ow0KPj4+ICsgICAgIGRtYV9idWZfcHV0KGRtYWJ1Zik7DQo+Pj4gKyAgICAgbGlzdF9mb3JfZWFj
aF9lbnRyeV9jb250aW51ZShkbWFidWYsICZkbWFidWZfbGlzdCwgbGlzdF9ub2RlKSB7DQo+Pj4g
KyAgICAgICAgICAgICBpZiAoZmlsZV9yZWZfZ2V0KCZkbWFidWYtPmZpbGUtPmZfcmVmKSkgew0K
Pj4+ICsgICAgICAgICAgICAgICAgICAgICByZXQgPSBkbWFidWY7DQo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIGJyZWFrOw0KPj4+ICsgICAgICAgICAgICAgfQ0KPj4+ICsgICAgIH0NCj4+PiAr
ICAgICBtdXRleF91bmxvY2soJmRtYWJ1Zl9saXN0X211dGV4KTsNCj4+PiArICAgICByZXR1cm4g
cmV0Ow0KPj4+ICt9DQo+Pj4gKw0KPj4+ICBzdGF0aWMgY2hhciAqZG1hYnVmZnNfZG5hbWUoc3Ry
dWN0IGRlbnRyeSAqZGVudHJ5LCBjaGFyICpidWZmZXIsIGludCBidWZsZW4pDQo+Pj4gIHsNCj4+
PiAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gaW5kZXggOGZm
NGFkZDcxZjg4Li4xODIwZjZkYjZlNTggMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmgNCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+IEBAIC01Njgs
NiArNTY4LDkgQEAgc3RhdGljIGlubGluZSB2b2lkIGdldF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYpDQo+Pj4gICAgICAgZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKTsNCj4+PiAgfQ0KPj4+
DQo+Pj4gK3N0cnVjdCBkbWFfYnVmICpnZXRfZmlyc3RfZG1hYnVmKHZvaWQpOw0KPj4+ICtzdHJ1
Y3QgZG1hX2J1ZiAqZ2V0X25leHRfZG1hYnVmKHN0cnVjdCBkbWFfYnVmICpkbWJ1Zik7DQo+Pj4g
Kw0KPj4+ICAvKioNCj4+PiAgICogZG1hX2J1Zl9pc19keW5hbWljIC0gY2hlY2sgaWYgYSBETUEt
YnVmIHVzZXMgZHluYW1pYyBtYXBwaW5ncy4NCj4+PiAgICogQGRtYWJ1ZjogdGhlIERNQS1idWYg
dG8gY2hlY2sNCj4+PiBkaWZmIC0tZ2l0IGEva2VybmVsL2JwZi9NYWtlZmlsZSBiL2tlcm5lbC9i
cGYvTWFrZWZpbGUNCj4+PiBpbmRleCA3MDUwMmYwMzhiOTIuLjNhMzM1YzUwZTZlMyAxMDA2NDQN
Cj4+PiAtLS0gYS9rZXJuZWwvYnBmL01ha2VmaWxlDQo+Pj4gKysrIGIva2VybmVsL2JwZi9NYWtl
ZmlsZQ0KPj4+IEBAIC01Myw2ICs1Myw5IEBAIG9iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0g
cmVsb19jb3JlLm8NCj4+PiAgb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBidGZfaXRlci5v
DQo+Pj4gIG9iai0kKENPTkZJR19CUEZfU1lTQ0FMTCkgKz0gYnRmX3JlbG9jYXRlLm8NCj4+PiAg
b2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBrbWVtX2NhY2hlX2l0ZXIubw0KPj4+ICtpZmVx
ICgkKENPTkZJR19ETUFfU0hBUkVEX0JVRkZFUikseSkNCj4+PiArb2JqLSQoQ09ORklHX0JQRl9T
WVNDQUxMKSArPSBkbWFidWZfaXRlci5vDQo+Pj4gK2VuZGlmDQo+Pj4NCj4+PiAgQ0ZMQUdTX1JF
TU9WRV9wZXJjcHVfZnJlZWxpc3QubyA9ICQoQ0NfRkxBR1NfRlRSQUNFKQ0KPj4+ICBDRkxBR1Nf
UkVNT1ZFX2JwZl9scnVfbGlzdC5vID0gJChDQ19GTEFHU19GVFJBQ0UpDQo+Pj4gZGlmZiAtLWdp
dCBhL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYyBiL2tlcm5lbC9icGYvZG1hYnVmX2l0ZXIuYw0K
Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi44MGJjYTgy
MzljNmQNCj4+PiAtLS0gL2Rldi9udWxsDQo+Pj4gKysrIGIva2VybmVsL2JwZi9kbWFidWZfaXRl
ci5jDQo+Pj4gQEAgLTAsMCArMSwxMDIgQEANCj4+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAtb25seQ0KPj4+ICsvKiBDb3B5cmlnaHQgKGMpIDIwMjUgR29vZ2xlIExMQyAq
Lw0KPj4+ICsjaW5jbHVkZSA8bGludXgvYnBmLmg+DQo+Pj4gKyNpbmNsdWRlIDxsaW51eC9idGZf
aWRzLmg+DQo+Pj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+Pj4gKyNpbmNsdWRlIDxs
aW51eC9rZXJuZWwuaD4NCj4+PiArI2luY2x1ZGUgPGxpbnV4L3NlcV9maWxlLmg+DQo+Pj4gKw0K
Pj4+ICtCVEZfSURfTElTVF9TSU5HTEUoYnBmX2RtYWJ1Zl9idGZfaWQsIHN0cnVjdCwgZG1hX2J1
ZikNCj4+PiArREVGSU5FX0JQRl9JVEVSX0ZVTkMoZG1hYnVmLCBzdHJ1Y3QgYnBmX2l0ZXJfbWV0
YSAqbWV0YSwgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4+PiArDQo+Pj4gK3N0YXRpYyB2b2lk
ICpkbWFidWZfaXRlcl9zZXFfc3RhcnQoc3RydWN0IHNlcV9maWxlICpzZXEsIGxvZmZfdCAqcG9z
KQ0KPj4+ICt7DQo+Pj4gKyAgICAgaWYgKCpwb3MpDQo+Pj4gKyAgICAgICAgICAgICByZXR1cm4g
TlVMTDsNCj4+PiArDQo+Pj4gKyAgICAgcmV0dXJuIGdldF9maXJzdF9kbWFidWYoKTsNCj4+PiAr
fQ0KPj4+ICsNCj4+PiArc3RhdGljIHZvaWQgKmRtYWJ1Zl9pdGVyX3NlcV9uZXh0KHN0cnVjdCBz
ZXFfZmlsZSAqc2VxLCB2b2lkICp2LCBsb2ZmX3QgKnBvcykNCj4+PiArew0KPj4+ICsgICAgIHN0
cnVjdCBkbWFfYnVmICpkbWFidWYgPSB2Ow0KPj4+ICsNCj4+PiArICAgICArKypwb3M7DQo+Pj4g
Kw0KPj4+ICsgICAgIHJldHVybiBnZXRfbmV4dF9kbWFidWYoZG1hYnVmKTsNCj4+PiArfQ0KPj4+
ICsNCj4+PiArc3RydWN0IGJwZl9pdGVyX19kbWFidWYgew0KPj4+ICsgICAgIF9fYnBmX21kX3B0
cihzdHJ1Y3QgYnBmX2l0ZXJfbWV0YSAqLCBtZXRhKTsNCj4+PiArICAgICBfX2JwZl9tZF9wdHIo
c3RydWN0IGRtYV9idWYgKiwgZG1hYnVmKTsNCj4+PiArfTsNCj4+PiArDQo+Pj4gK3N0YXRpYyBp
bnQgX19kbWFidWZfc2VxX3Nob3coc3RydWN0IHNlcV9maWxlICpzZXEsIHZvaWQgKnYsIGJvb2wg
aW5fc3RvcCkNCj4+PiArew0KPj4+ICsgICAgIHN0cnVjdCBicGZfaXRlcl9tZXRhIG1ldGEgPSB7
DQo+Pj4gKyAgICAgICAgICAgICAuc2VxID0gc2VxLA0KPj4+ICsgICAgIH07DQo+Pj4gKyAgICAg
c3RydWN0IGJwZl9pdGVyX19kbWFidWYgY3R4ID0gew0KPj4+ICsgICAgICAgICAgICAgLm1ldGEg
PSAmbWV0YSwNCj4+PiArICAgICAgICAgICAgIC5kbWFidWYgPSB2LA0KPj4+ICsgICAgIH07DQo+
Pj4gKyAgICAgc3RydWN0IGJwZl9wcm9nICpwcm9nID0gYnBmX2l0ZXJfZ2V0X2luZm8oJm1ldGEs
IGluX3N0b3ApOw0KPj4+ICsNCj4+PiArICAgICBpZiAocHJvZykNCj4+PiArICAgICAgICAgICAg
IHJldHVybiBicGZfaXRlcl9ydW5fcHJvZyhwcm9nLCAmY3R4KTsNCj4+PiArDQo+Pj4gKyAgICAg
cmV0dXJuIDA7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyBpbnQgZG1hYnVmX2l0ZXJfc2Vx
X3Nob3coc3RydWN0IHNlcV9maWxlICpzZXEsIHZvaWQgKnYpDQo+Pj4gK3sNCj4+PiArICAgICBy
ZXR1cm4gX19kbWFidWZfc2VxX3Nob3coc2VxLCB2LCBmYWxzZSk7DQo+Pj4gK30NCj4+PiArDQo+
Pj4gK3N0YXRpYyB2b2lkIGRtYWJ1Zl9pdGVyX3NlcV9zdG9wKHN0cnVjdCBzZXFfZmlsZSAqc2Vx
LCB2b2lkICp2KQ0KPj4+ICt7DQo+Pj4gKyAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IHY7
DQo+Pj4gKw0KPj4+ICsgICAgIGlmIChkbWFidWYpDQo+Pj4gKyAgICAgICAgICAgICBkbWFfYnVm
X3B1dChkbWFidWYpOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHNl
cV9vcGVyYXRpb25zIGRtYWJ1Zl9pdGVyX3NlcV9vcHMgPSB7DQo+Pj4gKyAgICAgLnN0YXJ0ICA9
IGRtYWJ1Zl9pdGVyX3NlcV9zdGFydCwNCj4+PiArICAgICAubmV4dCAgID0gZG1hYnVmX2l0ZXJf
c2VxX25leHQsDQo+Pj4gKyAgICAgLnN0b3AgICA9IGRtYWJ1Zl9pdGVyX3NlcV9zdG9wLA0KPj4+
ICsgICAgIC5zaG93ICAgPSBkbWFidWZfaXRlcl9zZXFfc2hvdywNCj4+PiArfTsNCj4+PiArDQo+
Pj4gK3N0YXRpYyB2b2lkIGJwZl9pdGVyX2RtYWJ1Zl9zaG93X2ZkaW5mbyhjb25zdCBzdHJ1Y3Qg
YnBmX2l0ZXJfYXV4X2luZm8gKmF1eCwNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBzZXFfZmlsZSAqc2VxKQ0KPj4+ICt7DQo+Pj4gKyAgICAgc2VxX3B1
dHMoc2VxLCAiZG1hYnVmIGl0ZXJcbiIpOw0KPj4+ICt9DQo+Pj4gKw0KPj4+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IGJwZl9pdGVyX3NlcV9pbmZvIGRtYWJ1Zl9pdGVyX3NlcV9pbmZvID0gew0KPj4+
ICsgICAgIC5zZXFfb3BzICAgICAgICAgICAgICAgID0gJmRtYWJ1Zl9pdGVyX3NlcV9vcHMsDQo+
Pj4gKyAgICAgLmluaXRfc2VxX3ByaXZhdGUgICAgICAgPSBOVUxMLA0KPj4+ICsgICAgIC5maW5p
X3NlcV9wcml2YXRlICAgICAgID0gTlVMTCwNCj4+PiArICAgICAuc2VxX3ByaXZfc2l6ZSAgICAg
ICAgICA9IDAsDQo+Pj4gK307DQo+Pj4gKw0KPj4+ICtzdGF0aWMgc3RydWN0IGJwZl9pdGVyX3Jl
ZyBicGZfZG1hYnVmX3JlZ19pbmZvID0gew0KPj4+ICsgICAgIC50YXJnZXQgICAgICAgICAgICAg
ICAgID0gImRtYWJ1ZiIsDQo+Pj4gKyAgICAgLmZlYXR1cmUgICAgICAgICAgICAgICAgPSBCUEZf
SVRFUl9SRVNDSEVELA0KPj4+ICsgICAgIC5zaG93X2ZkaW5mbyAgICAgICAgICAgID0gYnBmX2l0
ZXJfZG1hYnVmX3Nob3dfZmRpbmZvLA0KPj4+ICsgICAgIC5jdHhfYXJnX2luZm9fc2l6ZSAgICAg
ID0gMSwNCj4+PiArICAgICAuY3R4X2FyZ19pbmZvICAgICAgICAgICA9IHsNCj4+PiArICAgICAg
ICAgICAgIHsgb2Zmc2V0b2Yoc3RydWN0IGJwZl9pdGVyX19kbWFidWYsIGRtYWJ1ZiksDQo+Pj4g
KyAgICAgICAgICAgICAgIFBUUl9UT19CVEZfSURfT1JfTlVMTCB9LA0KPj4+ICsgICAgIH0sDQo+
Pj4gKyAgICAgLnNlcV9pbmZvICAgICAgICAgICAgICAgPSAmZG1hYnVmX2l0ZXJfc2VxX2luZm8s
DQo+Pj4gK307DQo+Pj4gKw0KPj4+ICtzdGF0aWMgaW50IF9faW5pdCBkbWFidWZfaXRlcl9pbml0
KHZvaWQpDQo+Pj4gK3sNCj4+PiArICAgICBicGZfZG1hYnVmX3JlZ19pbmZvLmN0eF9hcmdfaW5m
b1swXS5idGZfaWQgPSBicGZfZG1hYnVmX2J0Zl9pZFswXTsNCj4+PiArICAgICByZXR1cm4gYnBm
X2l0ZXJfcmVnX3RhcmdldCgmYnBmX2RtYWJ1Zl9yZWdfaW5mbyk7DQo+Pj4gK30NCj4+PiArDQo+
Pj4gK2xhdGVfaW5pdGNhbGwoZG1hYnVmX2l0ZXJfaW5pdCk7DQo+Pg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

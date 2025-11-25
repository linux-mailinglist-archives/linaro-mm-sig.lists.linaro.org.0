Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 088D1C840CE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 09:48:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 205CB3F85D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Nov 2025 08:48:57 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010050.outbound.protection.outlook.com [52.101.56.50])
	by lists.linaro.org (Postfix) with ESMTPS id 51CA93F712
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 08:48:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=HgSXdZfp;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l0/QkSmvaC/k1NPFOu7N96glws/ANiR3lv3gyrN2+F53NroUnJ4NuBh73cCpdkYC8U5eKhEinXWnKbMOfHaZEzBPeYqaaYDhvnlEqjbyXDGJyJm2LeUscamUD5blW4o11UnISXTULcs6D8/LkzNm52NvLaI+KWjGTJGbhDUtcBJ1/5bPWA7hUT24Zl/1Ix9vSwzp1n28tbMx1MyzGKixU9sxblFUTmE4NrprXfgMcaGtHV1lqq4idCrgXu/iSoD884ZX+mM6c0C7t1vCoAuAhJ5OUeV/M6J3gF7+fyI2RwJNiy9LaOs8EJBSK3x5T/2Ac/9fMielX5pF+e4YRdAMqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YYjSquFC+baB3/zs7XyWYDbyUAP/grNrM/dylAF2wY=;
 b=m9LS3IqYkPRZeo7bxxhJl7N1wKr1X/6DRdD8LF+5Zx7guEQesdumVNuBDIL9Xjw4UvQdRRU6kOZsWodwgk7SH6TSL+Cl1iLhaNHIL/p83Y1ffD/wL7ElEe71V+9xz9/BD2BQepCQQTnMxrBxlIe7Vw7eW4Xn2TkRDtOJ2a80cCFQ3eqE4tc/x+QP/zs3R3NVHF7nxVZkSfIQmFgHy0kDBxrWmvXDNU1mrbY765/ZejE1c0uG6wxlYCpM0KyIUiQIwBKNKmSsWAYrbMVRoc22B/HLzRHWLIOZdJrnTHv+v5Lpf7EeNSvh6xUaCb/bor7Pr48NwYRTyL9Ix/7GFNwJmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7YYjSquFC+baB3/zs7XyWYDbyUAP/grNrM/dylAF2wY=;
 b=HgSXdZfpl/4NSosgbKjURYaGiZOMG+LQ7yStbJGHmRMkChLL14NQkAYH8wOt9H27poGiQDDOaay6MWr0Yd/znoMpu+GSlW46nyktskVQjDRl1OpURS0e1efjbKK2rGw899K45AgUymOLZ9B/wbodHQawLTQwTSBb8l/FlAP5MvA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB9737.namprd12.prod.outlook.com (2603:10b6:208:465::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.16; Tue, 25 Nov
 2025 08:48:40 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 08:48:39 +0000
Message-ID: <508ff709-0f05-4982-8e15-5fea3bbd12e7@amd.com>
Date: Tue, 25 Nov 2025 09:48:35 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 faith@gfxstrand.net, sumit.semwal@linaro.org
References: <20251120150018.27385-1-christian.koenig@amd.com>
 <20251120150018.27385-2-christian.koenig@amd.com>
 <380012b9d6f0e9ee3c2f125cfe2f37f65c1979e0.camel@mailbox.org>
 <b46913b6-fe61-48cd-a9ca-aa2fe3a12b63@amd.com>
 <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <1c1a14d42d0a4a25ebce26a2af0a61dc1b7813fc.camel@mailbox.org>
X-ClientProxiedBy: FR2P281CA0101.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB9737:EE_
X-MS-Office365-Filtering-Correlation-Id: 69654086-f6ae-4b47-0d2c-08de2bff6e1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Wm1qT3QwbGtHQTFUdkxEU09BVXJ1MW83cWkwdW5oTTdlaTBkQjhvVTJLSVI4?=
 =?utf-8?B?U0NSQkpTT295NGNFdVZ4QlFVQzNEZnovbVRzZ3NRSjFRQUpFTzhFU0RqMDVP?=
 =?utf-8?B?bHVCb1dzMWFUZWFtTEFRU3RQMGJyN2tydWRjbDIvOGR2ejF2MGIvOVlHdW9F?=
 =?utf-8?B?Vk56b1ZqRDJYOEZuZ2crNHFZNjR5K3dFVHR4ZFFQMjdObzhUckxMNG9jWWJR?=
 =?utf-8?B?Y2IyUUpOQitHTkN3MFRxV3ZXNWtNOFFTLzNUWldhRWY1ekkrMENGdHlFa2hB?=
 =?utf-8?B?Wml4eDR0b0R2K29JOWZ2bWNaYjFkakV6Rm11UFNRTWhHQjVNUWhDTnRCZGUr?=
 =?utf-8?B?aXpYMmNJbUFhcFhUdUJXdkpzS2NQWkZ5YnNXd2ovMmMxUTJZYW1valRGUFpQ?=
 =?utf-8?B?MjhaUm1iR013Tk1peDN3YkNVN1VkRktxMmI2bW5CQ01oZjl5Mk14ZVRRbHN4?=
 =?utf-8?B?ZVV4ZWlGYW5HVTUvMVo0UE1EeFpCUU5HczQyMUpsNWw4ZU9yVkQwWWFBeWZ2?=
 =?utf-8?B?MmJBSEthMjJ5cWxQajQzYnY4dXE3eExUSHI0Lyt5N3ZDUkNaOWp1MlVXcFRr?=
 =?utf-8?B?NDMvRFBCK2grUlQ1UEQrMHhWaWh3ZW1oYVN1K2dKR09QY1ppWjBlSndrOVBM?=
 =?utf-8?B?RVhEMGs1NDRNWGVTYXpYYm0yK0JpQ3ZDdW1PY1pQSnlVL3BvNDhPNmwrOW5O?=
 =?utf-8?B?SXI3cC9FUnMxNEVjNHY1QUE2RDJUY29hK3B6eEVoYlBnMUZqbmpPK2dKRkVU?=
 =?utf-8?B?TEtRb3Y4NEpYSWdjQkoxRDZia1l4OWltU0pJcXIxT2k1dFhuUzlmeWw0cjFV?=
 =?utf-8?B?alB5akdJOFRxaW1JckRhWVdoeDllZUlQcWVBdG92YkxzNG1RTUVTQVpnOUMy?=
 =?utf-8?B?cFRKZ0Q5aHNNelNZejlvQ1A4b3VMSFFxQ0dmc0ZZV2NCYTcxRVNTQnpiRWRF?=
 =?utf-8?B?UmhwallCUW5UWEJ1djN0OHNrRFA4SDFuQmxrUDEvcmFLZlovenI0OUI4M2Jx?=
 =?utf-8?B?dFgvRExCNzNFVFdmK0FmSmFaWWxrdjQ4V2RLc05DZ0IzOWV4ZFZRVjZDZkNw?=
 =?utf-8?B?eEpLZlF1cEgyMUd6ODNFN2F3NzlOSUlmYXpPQ2tnemFxMjZyUzlHSSsrVDZv?=
 =?utf-8?B?NHg4Zm9PdSt3cUJMeThGeEduVEd0TGJaS1dEdjJZdURDZFlOWGtNaldWdUc5?=
 =?utf-8?B?blRNME5ydUNUNmc3eU5XdS9pM0dURXU1WkVCSjVybkN1VzJoNTJzeEFUZGVr?=
 =?utf-8?B?TXNjSVpoc2luY3MzSnJvUHZSUWpveXRtVDhYS202V3dobkFENW41cmJwcjNn?=
 =?utf-8?B?RFUyQkRBaU9lTkdEVi96TWRLY2NtZ0hJTFp2U25OTkh6Rk91bXB2MnovQ0xw?=
 =?utf-8?B?UkFmcmxhYzBicmw3WDNuVzZKaTBWUy8rLytUS1psY2VaSWFnMFlHeXpwQk1i?=
 =?utf-8?B?UnRQODMwQjk2b0JrZnlsNFE5WmRUUWJadkl3MThZd2xPcm44NWp2blpvWEp2?=
 =?utf-8?B?MXBwYTJTUGNTRlEvUTdCcUZQOGkyUjljNDFjaTIyNjNUM2N1UzlCNkVmbjBE?=
 =?utf-8?B?QjdNOTdiQ1NhbUNJdTBrRkUxY0FLVEtYbm5xT3RabVprS3g1KzNIakdZYlBI?=
 =?utf-8?B?WE40SnlKdWw2cXREb1lCaDlnTDJCeWZiRUcweCtmZ1R6ZG02R2RCUnd2UlVZ?=
 =?utf-8?B?Z0tmYXE3d0p0OGFYUXdlVVphT29CbXVuZHUvQXdTU1lHZ0Y1U25KMTd3NUo4?=
 =?utf-8?B?Y2lTdlREd3BJWkUyVDBvUXg5TWRBZHR3VzNoWEVza0prRGdWcUZVYWt6TDRN?=
 =?utf-8?B?TldaUHdVcjJXNjhqWGNLNkY1L005Z3FsZ0xKd2F1NXlqdlJGSGVJK0NueGlE?=
 =?utf-8?B?emt0Zm5mTVV0Rnd0bWtOT1ljVUh5QnhTVm9PRThaLzZHU1dWNnREc3NHYnND?=
 =?utf-8?Q?b6x+duTZa785/j5OwSxBFjsdEJAAfAIs?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QWkwbVEveVQwaWpzM3ZrS1AvNnFkVlUvaFV6dlJFUkFrN1hIZXQ0OGthUEt6?=
 =?utf-8?B?NGY0YTZ1dUZ1Tm5wY3BHSjJwTkUxY0M0NzNiR1ZQZUZrdUtwazJiWUZOYjU3?=
 =?utf-8?B?dzNNUGZyWXUzZzgzZWdjajkrNndTSWQzWTdEMGRVUENKNWNia1g2Y3c4L0NY?=
 =?utf-8?B?SVFZNlRnbnljdFNCcFFma1drSFYvWEhjWjhZaW9qcG40U1M3YkFwM3Y1NzRJ?=
 =?utf-8?B?RXBQUWo3eUk1ZnM2YmtHMGt2K3F3QXhtenRaQU5JUlA1V0lOUVZ1MVc5bmxE?=
 =?utf-8?B?K1VreWFhSGZBT0F5N2hKWC9Hb3BiZHQ4eHQyV2cwVTlkTU5yT2lOMlJGZVNU?=
 =?utf-8?B?dkFSNVFDMDd2OUc1cXpjeHRIcTBhWi8yaXRoYnpBVVdYUGdSRk4xVU0wN09K?=
 =?utf-8?B?RUNvc0dJWVNVMEpQTnc5VGdTMVVMQWVKTXhEVlNaZy8xYnFHYlRITS90R2dJ?=
 =?utf-8?B?eWpMMmRpdkFwNVhKWlgrdWJEL0x2RjN5NW5BZXFQNXNkdWlzNHY3STd4bGdT?=
 =?utf-8?B?VEdqKzhLbFJJRTdnNWQ4MEtXK1NKamFPcFd5NnFiWHRoSStIKzdZWWNZREZw?=
 =?utf-8?B?SEg3S2l5ZDhBaU1iMGlSUlJJeGo0S0tzKzdBZzhQL1NIbHdiUnJXajFJbmxG?=
 =?utf-8?B?Kzh1OGtRdlR6NkxhZGx4UTVjeStEdUVvV0ZadnRrNkM4QWk2eVpNY3BwTjkv?=
 =?utf-8?B?TmE2MklTRmwvOUtUcnlwOEFhTDgvYTY0OElHOEt2RmZNVTk0ejQ4MVE0cUxk?=
 =?utf-8?B?OUhwNmUwQWs1OGJ1MFNlR0ZZMjdrRVBCb2ZkdzFSQmRmQVFBMEhXVDcxSlpJ?=
 =?utf-8?B?MVdDOHByZ1pmQXBydlZyeWVsTVgxbUdYbG96OHZ3TjRDK3lza0VpbUIvQkpN?=
 =?utf-8?B?OTBNS1JiOFJTMEVucFduS1Nad1c1em8xVUNla3B3c2dPd0YyTE5DQk9oZndx?=
 =?utf-8?B?YzBScmVZZnZ6Um1yOThJbzBTYzRIalhpYzVSVnYzMmp4WTYyc05uL0ovZzY5?=
 =?utf-8?B?Yno0b0Zja09tSnhzZ1F0TkUxZkdFZE13aEZWWlhBei9EajVDSFBiTDJ3S3Va?=
 =?utf-8?B?S0krNWEvU3h0Q2pXQVU1SCtCNGY1YzVXQ3dXVDRuRm1SQm5GamRYVmh1VGQw?=
 =?utf-8?B?YjR6YkgyWDNSa2tCMm1uMmdRR2hPT3NZazNuZ0Q2Wjk3UGZwSkxlOTlGMllu?=
 =?utf-8?B?V015VEdacnhsWmhKMmZzcXJBY0FpdE5RbFNRdTU3bmhpdmJnK1JOMHJ5OU1p?=
 =?utf-8?B?SkJUMFZXK1hnNjYyMUtGSllNcXhNUWgxSHIvL3MwVStIWG9xSmJGcTNvL3Ja?=
 =?utf-8?B?ZlFMNmtsdndIV0RJUXo1R21QTHRyUjZ3dldaakl2VmJ5Vy9YdlBSUHdZMExQ?=
 =?utf-8?B?c3QySTdDc3ZUSHhqd0NjOEt6Tlk4MndVM1hNblA3TWtBbCtzK1hJYm4rUGxw?=
 =?utf-8?B?L0dNdzBSUmsweVlSUDJ4Y05zdlBibFUzTVNjS0ZEWmZyRDVBM0ZMN3VNamJT?=
 =?utf-8?B?R2N2QjVVNFE4N2JscFdONUl1bEhHS1FaV2dscUZGeXRVM3F1T0ZuaVN5dE1i?=
 =?utf-8?B?aEVsMXhwMDZsRzkyd2JaNWE0UnhGTkVqZHM4dUdXcHBQM3BQRGJXZXRvN1or?=
 =?utf-8?B?SkVaUDNmaGcwK3NPYUptOCsxeE04Sk45S1ZpZlB6cDkxNFkrdVIwWjFxeDJh?=
 =?utf-8?B?WlpOZ29TVXhDSkNWZGpWWFliV3RvKzB3czVFc012K21BU3pTS0ExcExKY3NL?=
 =?utf-8?B?N1N6SGhSUlFnK2dnMzQ1NmRJcVZneXlCQUhqaWVsMm9nSTczeHRYc1VmYkZD?=
 =?utf-8?B?K2MwaXRZeE8waWxKc0ZRRVZuNVM0dEprRXh6V2VhU0VoakJ5ZkhUTEkxUDRa?=
 =?utf-8?B?MDJKSFNKazZZa1lTK0hZVE5VeXd5eGc2RXIzQTlOV1Z0SXlIK2RBOE40WEJm?=
 =?utf-8?B?VDA1RTFBOHVpSWd2MjNWSnRGRU5SQW9sUDRFeWhFZVc3Um9rZG4zWVZuNlBO?=
 =?utf-8?B?ZkJ4ajdkS1ZjWU5GMTdGSVlFYVRvQndGYXp5Y1pFUkpQQ0pITk8yM2ppRXl5?=
 =?utf-8?B?dHlXbHVwUGF1RmlsZzlKWlJMRlViZGhHVjFEN25DTTIzdjNRMHdFaGNOZXVh?=
 =?utf-8?Q?cpb3l4ZhQ9B6AVGVntCtemy81?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69654086-f6ae-4b47-0d2c-08de2bff6e1d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 08:48:39.8405
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QZt9LvPbI9FnwQTh5LPDqoHO3vaSm+5z0pbNBoVpGDgXGg43z+x2i+tXjGp9sUnv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB9737
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,gfxstrand.net,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.56.50:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 51CA93F712
X-Spamd-Bar: ----
Message-ID-Hash: R6NGAVVVJ5RMG2SIMTQM6X6XXI6SKVDJ
X-Message-ID-Hash: R6NGAVVVJ5RMG2SIMTQM6X6XXI6SKVDJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] dma-buf/fence: give some reasonable maximum signaling timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R6NGAVVVJ5RMG2SIMTQM6X6XXI6SKVDJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjUvMjUgMDk6MTMsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVHVlLCAyMDI1
LTExLTI1IGF0IDA5OjAzICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gMTEv
MjUvMjUgMDg6NTUsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4+Pj4gwqANCj4+Pj4gKy8qKg0K
Pj4+PiArICogZGVmaW5lIERNQV9GRU5DRV9NQVhfUkVBU09OQUJMRV9USU1FT1VUIC0gbWF4IHJl
YXNvbmFibGUgc2lnbmFsaW5nIHRpbWVvdXQNCj4+Pj4gKyAqDQo+Pj4+ICsgKiBUaGUgZG1hX2Zl
bmNlIG9iamVjdCBoYXMgYSBkZWVwIGludGVyIGRlcGVuZGVuY3kgd2l0aCBjb3JlIG1lbW9yeQ0K
Pj4+PiArICogbWFuYWdlbWVudCwgZm9yIGEgZGV0YWlsZWQgZXhwbGFuYXRpb24gc2VlIHNlY3Rp
b24gRE1BIEZlbmNlcyB1bmRlcg0KPj4+PiArICogRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2Rt
YS1idWYucnN0Lg0KPj4+PiArICoNCj4+Pj4gKyAqIEJlY2F1c2Ugb2YgdGhpcyBhbGwgZG1hX2Zl
bmNlIGltcGxlbWVudGF0aW9ucyBtdXN0IGd1YXJhbnRlZSB0aGF0IGVhY2ggZmVuY2UNCj4+Pj4g
KyAqIGNvbXBsZXRlcyBpbiBhIGZpbml0ZSB0aW1lLiBUaGlzIGRlZmluZSBoZXJlIG5vdyBnaXZl
cyBhIHJlYXNvbmFibGUgdmFsdWUgZm9yDQo+Pj4+ICsgKiB0aGUgdGltZW91dCB0byB1c2UuIEl0
IGlzIHBvc3NpYmxlIHRvIHVzZSBhIGxvbmdlciB0aW1lb3V0IGluIGFuDQo+Pj4+ICsgKiBpbXBs
ZW1lbnRhdGlvbiBidXQgdGhhdCBzaG91bGQgdGFpbnQgdGhlIGtlcm5lbC4NCj4+Pj4gKyAqLw0K
Pj4+PiArI2RlZmluZSBETUFfRkVOQ0VfTUFYX1JFQVNPTkFCTEVfVElNRU9VVCAoMipIWikNCj4+
Pg0KPj4+IEhaIGNhbiBjaGFuZ2UgZGVwZW5kaW5nIG9uIHRoZSBjb25maWcuIElzIHRoYXQgcmVh
bGx5IGEgZ29vZCBjaG9pY2U/IEkNCj4+PiBjb3VsZCBzZWUgcmFjeSBzaXR1YXRpb25zIGFyaXNp
bmcgaW4gc29tZSBjb25maWdzIHZzIG90aGVycw0KPj4NCj4+IDIqSFogaXMgYWx3YXlzIHR3byBz
ZWNvbmRzIGV4cHJlc3NlZCBpbiBudW1iZXIgb2YgamlmZmllcywgSSBjYW4gdXNlIG1zZWNzX3Rv
X2ppZmZpZXMoMjAwMCkgdG8gbWFrZSB0aGF0IG1vcmUgb2J2aW91cy4NCj4gDQo+IE9uIEFNRDY0
IG1heWJlLiBXaGF0IGFib3V0IHRoZSBvdGhlciBhcmNoaXRlY3R1cmVzPw0KDQpIWiBpcyBkZWZp
bmVkIGFzIGppZmZpZXMgcGVyIHNlY29uZCwgU28gZXZlbiBpZiBpdCBjaGFuZ2VzIHRvIDEwLDEw
MCBvciAxMDAwIGRlcGVuZGluZyBvbiB0aGUgYXJjaGl0ZWN0dXJlIDIqSFogaXMgYWx3YXlzIHR3
byBzZWNvbmRzIGV4cHJlc3NlZCBpbiBqaWZmaWVzLg0KDQpUaGUgSFogZGVmaW5lIGlzIGFjdHVh
bGx5IHRoZXJlIHRvIG1ha2UgaXQgYXJjaGl0ZWN0dXJlIGluZGVwZW5kZW50Lg0KDQo+Pg0KPj4g
VGhlIEdQVSBzY2hlZHVsZXIgaGFzIGEgdmVyeSBzaW1pbGFyIGRlZmluZSwgTUFYX1dBSVRfU0NI
RURfRU5USVRZX1FfRU1QVFkgd2hpY2ggaXMgY3VycmVudGx5IGp1c3QgMSBzZWNvbmQuDQo+Pg0K
Pj4gVGhlIHJlYWwgcXVlc3Rpb24gaXMgd2hhdCBpcyB0aGUgbWF4aW11bSBhbW91bnQgb2YgdGlt
ZSB3ZSBjYW4gd2FpdCBmb3IgdGhlIEhXIGJlZm9yZSB3ZSBzaG91bGQgdHJpZ2dlciBhIHRpbWVv
dXQ/DQo+IA0KPiBUaGF0J3MgYSBxdWVzdGlvbiBvbmx5IHRoZSBkcml2ZXJzIGNhbiBhbnN3ZXIs
IHdoaWNoIGlzIHdoeSBJIGxpa2UgdG8NCj4gdGhpbmsgdGhhdCBzZXR0aW5nIGdsb2JhbCBjb25z
dGFudHMgY29uc3RyYWluaW5nIGFsbCBwYXJ0aWVzIGlzIG5vdCB0aGUNCj4gcmlnaHQgdGhpbmcg
dG8gZG8uDQoNCkV4YWN0bHkgdGhhdCdzIHRoZSByZWFzb24gd2h5IEkgYnJpbmcgdGhhdCB1cC4g
SSB0aGluayB0aGF0IGRyaXZlcnMgc2hvdWxkIGJlIGluIGNoYXJnZSBvZiB0aW1lb3V0cyBpcyB0
aGUgd3JvbmcgYXBwcm9hY2guDQoNClNlZSB0aGUgcmVhc29uIHdoeSB3ZSBoYXZlIHRoZSB0aW1l
b3V0IChhbmQgZG9jdW1lbnRlZCB0aGF0IGl0IGlzIGEgbXVzdCBoYXZlKSBpcyBiZWNhdXNlIHdl
IGhhdmUgYm90aCBjb3JlIG1lbW9yeSBtYW5hZ2VtZW50IGFzIHdlbGwgYSBkZXNrdG9wIHJlc3Bv
bnNpdmVuZXNzIGRlcGVuZCBvbiBpdC4NCg0KPiBXaGF0IGlzIGV2ZW4geW91ciBtb3RpdmF0aW9u
PyBXaGF0IHByb2JsZW0gZG9lcyB0aGlzIHNvbHZlPyBJcyB0aGUgT09NDQo+IGtpbGxlciBjdXJy
ZW50bHkgaGFuZ2luZyBmb3IgYW55b25lPyBDYW4geW91IGxpbmsgYSBidWcgcmVwb3J0Pw0KDQpJ
J20gbm90IHN1cmUgaWYgd2UgaGF2ZSBhbiBleHRlcm5hbCBidWcgcmVwb3J0ICh3ZSBoYXZlIGFu
IGludGVybmFsIG9uZSksIGJ1dCBmb3IgYW1kZ3B1IHRoZXJlIHdlcmUgY3VzdG9tZXIgY29tcGxh
aW5zIHRoYXQgMTAgc2Vjb25kcyBpcyB0byBsb25nLg0KDQpTbyB3ZSBjaGFuZ2VkIGl0IHRvIDIg
c2Vjb25kcyBmb3IgYW1kZ3B1LCBhbmQgbm93IHRoZXJlIGFyZSBjb21wbGFpbnMgZnJvbSBpbnRl
cm5hbCBBTUQgdGVhbXMgdGhhdCAyIHNlY29uZHMgaXMgdG8gc2hvcnQuDQoNCldoaWxlIHdvcmtp
bmcgb24gdGhhdCBJIHJlYWxpemVkIHRoYXQgdGhlIHRpbWVvdXQgaXMgYWN0dWFsbHkgbm90IGRy
aXZlciBkZXBlbmRlbnQgYXQgYWxsLg0KDQpXaGF0IGNhbiBtYXliZSBhcmd1ZWQgaXMgdGhhdCBh
IGRlc2t0b3Agc3lzdGVtIHNob3VsZCBoYXZlIGEgc2hvcnRlciB0aW1lb3V0IHRoYW4gc29tZSBz
ZXJ2ZXIsIGJ1dCB0aGF0IG9uZSBkcml2ZXIgbmVlZHMgYSBkaWZmZXJlbnQgdGltZW91dCB0aGFu
IGFub3RoZXIgZHJpdmVyIGRvZXNuJ3QgcmVhbGx5IG1ha2VzIHNlbnNlIHRvIG1lLg0KDQpJIG1l
YW4gd2hhdCBpcyBhY3R1YWxseSBIVyBkZXBlbmRlbnQgb24gdGhlIHJlcXVpcmVtZW50IHRoYXQg
SSBuZWVkIGEgcmVzcG9uc2l2ZSBkZXNrdG9wIHN5c3RlbT8NCg0KPj4NCj4+IFNvbWUgQU1EIGlu
dGVybmFsIHRlYW0gaXMgcHVzaGluZyBmb3IgMTAgc2Vjb25kcywgYnV0IHRoYXQgYWxzbyBtZWFu
cyB0aGF0IGZvciBleGFtcGxlIHdlIHdhaXQgMTAgc2Vjb25kcyBmb3IgdGhlIE9PTSBraWxsZXIg
dG8gZG8gc29tZXRoaW5nLiBUaGF0IHNvdW5kcyBsaWtlIHdheSB0byBsb25nLg0KPj4NCj4gDQo+
IE5vdXZlYXUgaGFzIHRpbWVvdXQgPSAxMCBzZWNvbmRzLiBBRkFJSyB3ZSd2ZSBuZXZlciBzZWVu
IGJ1Z3MgYmVjYXVzZQ0KPiBvZiB0aGF0LiBIYXZlIHlvdSBzZWVuIHNvbWU/DQoNClRoYW5rcyBm
b3IgdGhhdCBpbmZvLiBBbmQgdG8gYW5zd2VyIHRoZSBxdWVzdGlvbiwgeWVzIGNlcnRhaW5seS4N
Cg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gDQo+IFAuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

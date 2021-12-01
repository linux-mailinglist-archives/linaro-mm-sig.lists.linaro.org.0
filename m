Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A759B464C8B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 12:25:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CF8D6162D
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 11:25:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 417E7617EF; Wed,  1 Dec 2021 11:25:30 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A0C860E24;
	Wed,  1 Dec 2021 11:25:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 524FB6056F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 11:25:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4FC9B60E75; Wed,  1 Dec 2021 11:25:26 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2058.outbound.protection.outlook.com [40.107.237.58])
 by lists.linaro.org (Postfix) with ESMTPS id 322FC6056F
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 11:25:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K4oGeEh88phd5nXaQ5QeSA2/bQ2IcMT1jJS7TGp3X2/NPMEyfEtImmFS70u7G5jPKpr3JbmxbJhjrn7mi1dioaflSUaMomcKCV5oCHkq9jOmtwnsf5tECJzPsKY+YuUChwYXxl5HmNLG2CRK5IIqK1UwwL8GvlwpndIB/FkMbZDg1ZzIqBliZCTTTRaDHkcHAn3VwesxuOCBsuLMzJGZ33Ra3TAo7yCAcR/2DJ4rpJ4PJWJ+L0Sk2uDK4irlWzILDK9boRo3jxw/UDO3yQ3nNGsnVQisbh2wzbzRH+ssKffsyNjEMjz64OswveOfDXL1BZA+4j3tRESGigWZgAwx8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OA4xfcalksFxzWvbmWDTmUnZ54CZ6HC1CZz7fV8jJDQ=;
 b=ZHNLCISIInNV17wSMTZcFsv1p5A872/y0KiR23U73WUVNs65Tu2GPhcZD54u6vno2j7WE4Vn/aoSDJSYPSzb1nr+LLm1ep5uiFkSXlFFzkQLPZBHNlfddjiCbQReAQps/kkO2GiKIooib/hXqSJhXVFM3X4h6j1JL9Mqwadd4ezLhJBA4yvfhcL4fT+7yFxSACJuszEGbLocsRF9DFHE1PQ3Uhcb2R0HwwIE1CZMksO/DZxdPLauZPquDA69vmVCgUL+8cVoNXvkWi1fsBo57qW2vC8ttxHO8ABo348cymfF2n8jficpYLQPQCemQvaPhtwzXjJG5BR3SksnRe5NTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OA4xfcalksFxzWvbmWDTmUnZ54CZ6HC1CZz7fV8jJDQ=;
 b=ThkewRKN2GsrUWTwLhpO4EI/jquES4i7OcNI2fzbA/SZGlUT7/3fQ7sH6BDQiZHD1RRierzWciRHOfsyDHup3VzAFMDk+7Jpa6eBrc93ZDMdK/CHlvhNnP8j1I3KDUKEogyjWW0M+J+UiiilH/6CmDXh+nGdxh6zQ36fQsys9zc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MW2PR12MB2428.namprd12.prod.outlook.com
 (2603:10b6:907:6::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Wed, 1 Dec
 2021 11:25:22 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4713.027; Wed, 1 Dec 2021
 11:25:15 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
 <20211130121936.586031-2-thomas.hellstrom@linux.intel.com>
 <c7502701-e85c-39f0-c249-702d029faa9e@linux.intel.com>
 <b440cfbc-2b9a-1aa2-76d6-17337f835777@linux.intel.com>
 <52a7cf8c-59c7-fec0-2274-d19bdc505314@amd.com>
 <57df8b0b-1d65-155f-a9a6-8073bbd4f28f@linux.intel.com>
 <2551da4d-2e51-cc24-7d4a-84ae00a1547c@amd.com>
 <29d096c91d720fbe5d410124580a02b663155b56.camel@linux.intel.com>
 <250a8e47-2093-1a98-3859-0204ec4e60e6@amd.com>
 <712b54fa1c09ae5cc1d75739ad8a7286f1dae8db.camel@linux.intel.com>
 <49cf2d43-9a8a-7738-0889-7e16b0256249@linux.intel.com>
 <193e36bd-ba64-1358-8178-73ee3afc3c41@amd.com>
 <c9109ec6-4265-ba8f-238f-4c793d076825@shipmail.org>
 <d1ada94c-88d3-d34d-9c51-0d427c3aca06@amd.com>
 <7ef3db03-8ae2-d886-2c39-36f661cac9a6@shipmail.org>
 <4805074d-7039-3eaf-eb5d-5797278b7f31@amd.com>
 <94435e0e-01db-5ae4-e424-64f73a09199f@shipmail.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <a4df4d5f-ea74-8725-aca9-d0edae986e5c@amd.com>
Date: Wed, 1 Dec 2021 12:25:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <94435e0e-01db-5ae4-e424-64f73a09199f@shipmail.org>
Content-Language: en-US
X-ClientProxiedBy: AS9PR06CA0126.eurprd06.prod.outlook.com
 (2603:10a6:20b:467::25) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [192.168.178.21] (87.176.183.123) by
 AS9PR06CA0126.eurprd06.prod.outlook.com (2603:10a6:20b:467::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.21 via Frontend
 Transport; Wed, 1 Dec 2021 11:25:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8426e2ed-fd2e-4cef-4294-08d9b4bd3f46
X-MS-TrafficTypeDiagnostic: MW2PR12MB2428:
X-Microsoft-Antispam-PRVS: <MW2PR12MB242891C3FF4C9FAF4821188083689@MW2PR12MB2428.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hdCNdvExtcn1YI4330S+U71OiqlqVaGA7HTQR45htdce1xNSJyIFtb+xvfEeiL1nlQ6/LfyBNeoph7h/B0wILXHD8m1Y3josx+T2hhkPn79uka/oNDdc+g94MfQM8N7e7SSkzliOoToh8Sl7sRNa8VlQPfpj4gokIpFxjthdJSWcrN8LN6bg/C/mO4Ph2f9cTMEXBgkPK+f9oiX6u44RmLiJ96UfKdqRCsHsc5kZQy9BJ2qsjYdyNfSJ8eOOrBfBc10uvCuRf02CF+RDnKkSk31AJcxQ4i36wkuy5l5cLm0gZ7ao6BAm7JcrPk6Nr1jxUr1UKp0rVupsSU8sovh0pzdLJfCnIJRCQnJeUfAncV9UxauZzvCNIbA3n3kxbJnA9F41EkwBQS7NrKOmOhpS8JaE5xp07UDcTcx0PNXeICX7F7gJmw6WnKgYZLrhEYnu0SboQP3K1tmR2/uyvwvSszgdPwulRswO1MXUkUbQMmGrq0zB3ttT1PEIbQ3/m5q89xGOte1L9j/Dr2QYKze2qim8IbQ5e3fPJUkiGNZLqT/Us1bQ+A1qleqneR1chE6mkvBe1zM+HvGDdohSNGIngN4WY7+HBTIu28EHev15hrK9OqdEOzOnVdjUKZ7Nyglj8lh1jiPxbizhdaSOOgx18DnVltI6H5GAnMIF1TrpbNOJNfWGXbAqdQqMYeXaTctJYeAxA6diYoHHKwLnGkxFB906sOrqs9cWj6/k2HryldwFfy8epR6/C2lxnyY+4LHz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2616005)(6486002)(66946007)(2906002)(26005)(5660300002)(53546011)(186003)(66476007)(956004)(16576012)(508600001)(8936002)(6666004)(66574015)(31696002)(83380400001)(86362001)(36756003)(4326008)(38100700002)(8676002)(66556008)(31686004)(316002)(110136005)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0F2am1QTVZqUzlYbUlYbWtsVFZSdFB6WFR5MXNkdnkraStWaEVObGdZMTNz?=
 =?utf-8?B?cEtIa0QwVmF3cHVQNDNObXNpcTYvb0hUZWJEeHB1Q0ZMb3YyZHQ4UHFMUnVu?=
 =?utf-8?B?ZHdld1Q1dWhKRDBCMWVjaGlIeVVKTnI2dzl3cDQ0bEtETk51bmtwZDl4Snlz?=
 =?utf-8?B?ZUdnWlRkRkhjM2FCRWd6Y3hzem56aGYwM0owSE9tdmdzQ0VkbTAzZFlHcGg4?=
 =?utf-8?B?bmh6UXFiZlBITHdNeGJyeVRGajV1T25IRkJLanJEbGRVdXlHZG5YMzk3eXp1?=
 =?utf-8?B?Z2JZM21BRG9JYStNbWdoVEVRc2VGeDdCbXpmWjgxT2d6dEhNM0dxVE81NTdP?=
 =?utf-8?B?V3h4YThrVkEvWkx6QXJOTXI2OFlVQndVZnlxbExSSlg0RG1MbWpOSUFXM0Jv?=
 =?utf-8?B?TU5nbUJvMVpjOTdISXo0Z25hdFN1Nm9veGhUS0pQcWlkSGllSmJsa1FVVnIv?=
 =?utf-8?B?ekpNczNSVXAwVk13UDZOSHZOYjRDbk53QVNKNlNhYW9KM2JrbTNNbnkydEVk?=
 =?utf-8?B?eUg1dEZJd1NKbERWYnBOaFAzYk10enVacmh1L3BxdFRlYThhSkIvWEhCWmFs?=
 =?utf-8?B?UDQyQmxmdGY3bzdzMk0wd1RSVk01dXNycHVnWGt5bTRENWl2UHpiRFJGTnkx?=
 =?utf-8?B?R0IvcHd5WmNIVUxSL3BQNmxpTEFya2FlMDJtd2hwU3NkQmEzSGdNMUtHZFlz?=
 =?utf-8?B?NEVSakJLeXMxNStRcnM2L05xOWdGV1BFNk9FV05KUHovK3NocXJrdUw4N3Fh?=
 =?utf-8?B?WUZQTjdNVHNxS2tXeDI1Y29ZdTU3a1hjK3EwTWFQYVlqeEtUQzlTSnRHckJl?=
 =?utf-8?B?UVBBdzBUZGd1ZHNmS2RKZlVWblNoRU5TbkxYRHhkdk9hazR0eCtFNm12MG1i?=
 =?utf-8?B?RXVhWWZjZC9mYjA2TkxTN0R0a2p3dzFSZFRVUDZ0bldiM3Zia01pSkZNaEE3?=
 =?utf-8?B?VnRVVmZDNWJ4YkhreisrcjdzeCtjcGZKbW1VTHRHbnlkWUVmZkpPT0RnSW5w?=
 =?utf-8?B?d3RMR21VQkJCTjd0cnFJdzc1UjZrK0t5RzVDTE8yZFh3NUplelREemNIY1J1?=
 =?utf-8?B?bDhJT2lhUjA1OWRvd05IVWFvZTBrcVJIYmFkVHhYWE11VERYUkpnRCtqbmtQ?=
 =?utf-8?B?NjdHK1lXQ1dsdmJvUE1LTVFZcSt0ZmZ3RndoVVFhMEFrdkNzKzA1QllxL2RT?=
 =?utf-8?B?ZEVCQXErZ3dNd21RZ2FhdHRHcVpVUjhkUjFtVjVuTHBUZWl1ZnJORGtQTDJ4?=
 =?utf-8?B?QXdoT0JLeVorSTVUOThna1lhQ2Jqa1NkbWFJTS9vbUw3SXlNUmpsRy9HaFBB?=
 =?utf-8?B?aDQrSDUzWmNVdDU2VDR4bWFPa3dBTGd1UkpMWGNsTEo3SVBGbHppNUZEVDRL?=
 =?utf-8?B?YjgvL1FPWWF1aTJvalRHU1dJZnM2ZS82RlV0cjJETXFFNS9RbUsyV0xONi9h?=
 =?utf-8?B?T3pGVFpka0dQUkJodno4NDF6UjZXeXhOZTd4SGNTZHJWZmxadnZvMGVTcUgx?=
 =?utf-8?B?UElLTTliK1h6cUpjZVpUSDJjRjZnT0RJS2xkZ2UvUDZYeFg2TG8wRkxjaGk3?=
 =?utf-8?B?WEVsMUZPUFM2eEM2TEsrbnYwNjArK0Z6VkNJUkVycy9yYisvaEs2Slhrekl5?=
 =?utf-8?B?Y1NTS3hOM3BhN09PTCt4b3ZxZytYVFZNdkxtV2dYenJ0eHNPcU50eDZLcHh4?=
 =?utf-8?B?RUNOTWJQRDk1V2Q2b25BTGQ4NGZzRm4wM0Z1OHErQjlnSkdyTnZYWmY3ODgy?=
 =?utf-8?B?Q1lCUmlKNTlyR213aitvY2I0Zy9mY0lBTkFsNzdWSGNMakVMQXFqeW1ob2pK?=
 =?utf-8?B?YVVhTk1MREpWYnBBNHZZbzhDMnRiNFVtWkxPaEtyYkZPTXJ2WXkvamUvand3?=
 =?utf-8?B?eXFRelNhNTM5VHM2UGZKV2orckVKVDRzcGxsZG9TNmtSUEIvWTJzMnJzNGEr?=
 =?utf-8?B?Zm11bHMzYk03d09wQ0RmM1RFRFRRRHlRek9qQnZOc0lhUHdzM0ZZMEVkK0ps?=
 =?utf-8?B?bHprV0Yyb1dqdnliSDNXU1JFSC9DNmpUTkR0N0FJOUszcE1BL0pyenk4Ulp5?=
 =?utf-8?B?eHJiYmV4UkhvU004Y25WM2NmMjZXQlRoak55UENRQnkzM0RQSTNoMUlsYXQw?=
 =?utf-8?Q?MR8M=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8426e2ed-fd2e-4cef-4294-08d9b4bd3f46
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 11:25:15.4612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 40Q+qtg3PzIXKRw/BsiSFxXvCIgkAdBI15R19s4QA5shwsm1x3+bYi0Q1k9yAm/P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR12MB2428
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH 1/2] dma-fence: Avoid establishing a
 locking order between fence classes
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDEuMTIuMjEgdW0gMTI6MDQgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+
Cj4gT24gMTIvMS8yMSAxMTozMiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMDEuMTIu
MjEgdW0gMTE6MTUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+Pj4gW1NOSVBd
Cj4+Pj4KPj4+PiBXaGF0IHdlIGNvdWxkIGRvIGlzIHRvIGF2b2lkIGFsbCB0aGlzIGJ5IG5vdCBj
YWxsaW5nIHRoZSBjYWxsYmFjayAKPj4+PiB3aXRoIHRoZSBsb2NrIGhlbGQgaW4gdGhlIGZpcnN0
IHBsYWNlLgo+Pj4KPj4+IElmIHRoYXQncyBwb3NzaWJsZSB0aGF0IG1pZ2h0IGJlIGEgZ29vZCBp
ZGVhLCBwbHMgYWxzbyBzZWUgYmVsb3cuCj4+Cj4+IFRoZSBwcm9ibGVtIHdpdGggdGhhdCBpcyAK
Pj4gZG1hX2ZlbmNlX3NpZ25hbF9sb2NrZWQoKS9kbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9s
b2NrZWQoKS4gSWYgd2UgCj4+IGNvdWxkIGF2b2lkIHVzaW5nIHRoYXQgb3IgYXQgbGVhc3QgYWxs
b3cgaXQgdG8gZHJvcCB0aGUgbG9jayB0aGVuIHdlIAo+PiBjb3VsZCBjYWxsIHRoZSBjYWxsYmFj
ayB3aXRob3V0IGhvbGRpbmcgaXQuCj4+Cj4+IFNvbWVib2R5IHdvdWxkIG5lZWQgdG8gYXVkaXQg
dGhlIGRyaXZlcnMgYW5kIHNlZSBpZiBob2xkaW5nIHRoZSBsb2NrIAo+PiBpcyByZWFsbHkgbmVj
ZXNzYXJ5IGFueXdoZXJlLgo+Pgo+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiAvVGhvbWFz
Cj4+Pj4+Pj4KPj4+Pj4+PiBPaCwgYW5kIGEgZm9sbG93IHVwIHF1ZXN0aW9uOgo+Pj4+Pj4+Cj4+
Pj4+Pj4gSWYgdGhlcmUgd2FzIGEgd2F5IHRvIGJyZWFrIHRoZSByZWN1cnNpb24gb24gZmluYWwg
cHV0KCkgKHVzaW5nIAo+Pj4+Pj4+IHRoZSBzYW1lIGJhc2ljIGFwcHJvYWNoIGFzIHBhdGNoIDIg
aW4gdGhpcyBzZXJpZXMgdXNlcyB0byBicmVhayAKPj4+Pj4+PiByZWN1cnNpb24gaW4gZW5hYmxl
X3NpZ25hbGluZygpKSwgc28gdGhhdCBub25lIG9mIHRoZXNlIAo+Pj4+Pj4+IGNvbnRhaW5lcnMg
ZGlkIHJlcXVpcmUgYW55IHNwZWNpYWwgdHJlYXRtZW50LCB3b3VsZCBpdCBiZSB3b3J0aCAKPj4+
Pj4+PiBwdXJzdWluZz8gSSBndWVzcyBpdCBtaWdodCBiZSBwb3NzaWJsZSBieSBoYXZpbmcgdGhl
IGNhbGxiYWNrcyAKPj4+Pj4+PiBkcm9wIHRoZSByZWZlcmVuY2VzIHJhdGhlciB0aGFuIHRoZSBs
b29wIGluIHRoZSBmaW5hbCBwdXQuICsgYSAKPj4+Pj4+PiBjb3VwbGUgb2YgY2hhbmdlcyBpbiBj
b2RlIGl0ZXJhdGluZyBvdmVyIHRoZSBmZW5jZSBwb2ludGVycy4KPj4+Pj4+Cj4+Pj4+PiBUaGF0
IHdvbid0IHJlYWxseSBoZWxwLCB5b3UganVzdCBtb3ZlIHRoZSByZWN1cnNpb24gZnJvbSB0aGUg
Cj4+Pj4+PiBmaW5hbCBwdXQgaW50byB0aGUgY2FsbGJhY2suCj4+Pj4+Cj4+Pj4+IEhvdyBkbyB3
ZSByZWN1cnNlIGZyb20gdGhlIGNhbGxiYWNrPyBUaGUgaW50cm9kdWNlZCBmZW5jZV9wdXQoKSBv
ZiAKPj4+Pj4gaW5kaXZpZHVhbCBmZW5jZSBwb2ludGVycwo+Pj4+PiBkb2Vzbid0IHJlY3Vyc2Ug
YW55bW9yZSAoYXQgbW9zdCAxIGxldmVsKSwgYW5kIGFueSBjYWxsYmFjayAKPj4+Pj4gcmVjdXJz
aW9uIGlzIGJyb2tlbiBieSB0aGUgaXJxX3dvcms/Cj4+Pj4KPj4+PiBZZWFoLCBidXQgdGhlbiB5
b3Ugd291bGQgbmVlZCB0byB0YWtlIGFub3RoZXIgbG9jayB0byBhdm9pZCByYWNpbmcgCj4+Pj4g
d2l0aCBkbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQoKS4KPj4+Pgo+Pj4+Pgo+Pj4+PiBJIGZpZ3Vy
ZSB0aGUgYmlnIGFtb3VudCBvZiB3b3JrIHdvdWxkIGJlIHRvIGFkanVzdCBjb2RlIHRoYXQgCj4+
Pj4+IGl0ZXJhdGVzIG92ZXIgdGhlIGluZGl2aWR1YWwgZmVuY2UgcG9pbnRlcnMgdG8gcmVjb2du
aXplIHRoYXQgdGhleSAKPj4+Pj4gYXJlIHJjdSBwcm90ZWN0ZWQuCj4+Pj4KPj4+PiBDb3VsZCBi
ZSB0aGF0IHdlIGNvdWxkIHNvbHZlIHRoaXMgd2l0aCBSQ1UsIGJ1dCB0aGF0IHNvdW5kcyBsaWtl
IGEgCj4+Pj4gbG90IG9mIGNodXJuIGZvciBubyBnYWluIGF0IGFsbC4KPj4+Pgo+Pj4+IEluIG90
aGVyIHdvcmRzIGV2ZW4gd2l0aCB0aGUgcHJvYmxlbXMgc29sdmVkIEkgdGhpbmsgaXQgd291bGQg
YmUgYSAKPj4+PiByZWFsbHkgYmFkIGlkZWEgdG8gYWxsb3cgY2hhaW5pbmcgb2YgZG1hX2ZlbmNl
X2FycmF5IG9iamVjdHMuCj4+Pgo+Pj4gWWVzLCB0aGF0IHdhcyByZWFsbHkgdGhlIHF1ZXN0aW9u
LCBJcyBpdCB3b3J0aCBwdXJzdWluZyB0aGlzPyBJJ20gCj4+PiBub3QgcmVhbGx5IHN1Z2dlc3Rp
bmcgd2Ugc2hvdWxkIGFsbG93IHRoaXMgYXMgYW4gaW50ZW50aW9uYWwgCj4+PiBmZWF0dXJlLiBJ
J20gd29ycmllZCwgaG93ZXZlciwgdGhhdCBpZiB3ZSBhbGxvdyB0aGVzZSBjb250YWluZXJzIHRv
IAo+Pj4gc3RhcnQgZmxvYXRpbmcgYXJvdW5kIGNyb3NzLWRyaXZlciAob3IgZXZlbiBpbnRlcm5h
bGx5KSBkaXNndWlzZWQgYXMgCj4+PiBvcmRpbmFyeSBkbWFfZmVuY2VzLCB0aGV5IHdvdWxkIHJl
cXVpcmUgYSBsb3Qgb2YgZHJpdmVyIHNwZWNpYWwgCj4+PiBjYXNpbmcsIG9yIGVsc2UgY29tcGxl
dGVseSB1bmV4cGVjZWQgV0FSTl9PTigpcyBhbmQgbG9ja2RlcCBzcGxhdHMgCj4+PiB3b3VsZCBz
dGFydCB0byB0dXJuIHVwLCBzY2FyaW5nIHBlb3BsZSBvZmYgZnJvbSB1c2luZyB0aGVtLiBBbmQg
dGhhdCAKPj4+IHdvdWxkIGJlIGEgYnJlZWRpbmcgZ3JvdW5kIGZvciBoYWlyeSBkcml2ZXItcHJp
dmF0ZSBjb25zdHJ1Y3RzLgo+Pgo+PiBXZWxsIHRoZSBxdWVzdGlvbiBpcyB3aHkgd2Ugd291bGQg
d2FudCB0byBkbyBpdD8KPj4KPj4gSWYgaXQncyB0byBhdm9pZCBpbnRlciBkcml2ZXIgbG9jayBk
ZXBlbmRlbmNpZXMgYnkgYXZvaWRpbmcgdG8gY2FsbCAKPj4gdGhlIGNhbGxiYWNrIHdpdGggdGhl
IHNwaW5sb2NrIGhlbGQsIHRoZW4geWVzIHBsZWFzZS4gV2UgaGFkIHRvbnMgb2YgCj4+IHByb2Js
ZW1zIHdpdGggdGhhdCwgcmVzdWx0aW5nIGluIGlycV93b3JrIGFuZCB3b3JrX2l0ZW0gZGVsZWdh
dGlvbiAKPj4gYWxsIG92ZXIgdGhlIHBsYWNlLgo+Cj4gWWVzLCB0aGF0IHNvdW5kcyBsaWtlIHNv
bWV0aGluZyBkZXNpcmFibGUsIGJ1dCBpbiB0aGVzZSBjb250YWluZXJzLCAKPiB3aGF0J3MgY2F1
c2luZyB0aGUgbG9jayBkZXBlbmRlbmNpZXMgaXMgdGhlIGVuYWJsZV9zaWduYWxpbmcoKSAKPiBj
YWxsYmFjayB0aGF0IGlzIHR5cGljYWxseSBjYWxsZWQgbG9ja2VkLgo+Cj4KPj4KPj4gSWYgaXQn
cyB0byBhbGxvdyBuZXN0aW5nIG9mIGRtYV9mZW5jZV9hcnJheSBpbnN0YW5jZXMsIHRoZW4gaXQn
cyBtb3N0IAo+PiBsaWtlbHkgYSByZWFsbHkgYmFkIGlkZWEgZXZlbiBpZiB3ZSBmaXggYWxsIHRo
ZSBsb2NraW5nIG9yZGVyIHByb2JsZW1zLgo+Cj4gV2VsbCBJIHRoaW5rIG15IHVzZS1jYXNlIHdo
ZXJlIEkgaGl0IGEgZGVhZCBlbmQgbWF5IGlsbHVzdHJhdGUgd2hhdCAKPiB3b3JyaWVzIG1lIGhl
cmU6Cj4KPiAxKSBXZSB1c2UgYSBkbWEtZmVuY2UtYXJyYXkgdG8gY29hbGVzY2UgYWxsIGRlcGVu
ZGVuY2llcyBmb3IgdHRtIAo+IG9iamVjdCBtaWdyYXRpb24uCj4gMikgV2UgdXNlIGEgZG1hLWZl
bmNlLWNoYWluIHRvIG9yZGVyIHRoZSByZXN1bHRpbmcgZG1fZmVuY2UgaW50byBhIAo+IHRpbWVs
aW5lIGJlY2F1c2UgdGhlIFRUTSByZXNvdXJjZSBtYW5hZ2VyIGNvZGUgcmVxdWlyZXMgdGhhdC4K
Pgo+IEluaXRpYWxseSBzZWVtaW5nbHkgaGFybWxlc3MgdG8gbWUuCj4KPiBCdXQgYWZ0ZXIgYSBz
ZXF1ZW5jZSBldmljdC0+YWxsb2MtPmNsZWFyLCB0aGUgZG1hLWZlbmNlLWNoYWluIGZlZWRzIAo+
IGludG8gdGhlIGRtYS1mZW5jZS1hcnJheSBmb3IgdGhlIGNsZWFyaW5nIG9wZXJhdGlvbi4gQ29k
ZSBzdGlsbCB3b3JrcyAKPiBmaW5lLCBhbmQgbm8gZGVlcCByZWN1cnNpb24sIG5vIHdhcm5pbmdz
LiBCdXQgaWYgSSB3ZXJlIHRvIGFkZCBhbm90aGVyIAo+IGRyaXZlciB0byB0aGUgc3lzdGVtIHRo
YXQgaW5zdGVhZCBmZWVkcyBhIGRtYS1mZW5jZS1hcnJheSBpbnRvIGEgCj4gZG1hLWZlbmNlLWNo
YWluLCB0aGlzIHdvdWxkIGdpdmUgbWUgYSBsb2NrZGVwIHNwbGF0Lgo+Cj4gU28gdGhlbiBpZiBz
b21lYm9keSB3ZXJlIHRvIGNvbWUgdXAgd2l0aCB0aGUgc3BsZW5kaWQgaWRlYSBvZiB1c2luZyBh
IAo+IGRtYS1mZW5jZS1jaGFpbiB0byBpbml0aWFsbHkgY29hbGVzY2UgZmVuY2VzLCBJJ2QgaGl0
IHRoZSBzYW1lIHByb2JsZW0gCj4gb3IgcmlzayBpbGxlZ2FseSBqb2luaW5nIHR3byBkbWEtZmVu
Y2UtY2hhaW5zIHRvZ2V0aGVyLgo+Cj4gVG8gZml4IHRoaXMsIEkgd291bGQgbmVlZCB0byBsb29r
IGF0IHRoZSBpbmNvbWluZyBmZW5jZXMgYW5kIGl0ZXJhdGUgCj4gb3ZlciBhbnkgZG1hLWZlbmNl
LWFycmF5IG9yIGRtYS1mZW5jZS1jaGFpbiB0aGF0IGlzIGZlZCBpbnRvIHRoZSAKPiBkbWEtZmVu
Y2UtYXJyYXkgdG8gZmxhdHRlbiBvdXQgdGhlIGlucHV0LiBJbiBmYWN0IGFsbCBkbWEtZmVuY2Ut
YXJyYXkgCj4gdXNlcnMgd291bGQgbmVlZCB0byBkbyB0aGF0LCBhbmQgZXZlbiBkbWEtZmVuY2Ut
Y2hhaW4gdXNlcnMgd2F0Y2hpbmcgCj4gb3V0IGZvciBub3Qgam9pbmluZyBjaGFpbnMgdG9nZXRo
ZXIgb3IgYWNjaWRlbnRseSBhZGQgYW4gYXJyYXkgdGhhdCAKPiBwZXJoYXBzIGNhbWUgYXMgYSBk
aXNndWlzZWQgZG1hLWZlbmNlIGZyb20gYW50b3RoZXIgZHJpdmVyLgo+Cj4gU28gdGhlIHB1cnBv
c2UgdG8gbWUgd291bGQgYmUgdG8gYWxsb3cgdGhlc2UgY29udGFpbmVycyBhcyBpbnB1dCB0byAK
PiBlYWNob3RoZXIgd2l0aG91dCBhIGxvdCBvZiBpbi1kcml2ZXIgc3BlY2lhbC1jYXNpbmcsIGJl
IGl0IGJ5IGJyZWFraW5nIAo+IHJlY3Vyc2lvbiBvbiBidWlsdC1pbiBmbGF0dGVuaW5nIHRvIGF2
b2lkCj4KPiBhKSBIaXR0aW5nIGlzc3VlcyBpbiB0aGUgZnV0dXJlIG9yIHdpdGggZXhpc3Rpbmcg
aW50ZXJvcGVyYXRpbmcgZHJpdmVycy4KPiBiKSBBdm9pZCBkcml2ZXItcHJpdmF0ZSBjb250YWlu
ZXJzIHRoYXQgYWxzbyBtaWdodCBicmVhayB0aGUgCj4gaW50ZXJvcGVyYWJpbGl0eS4gKEZvciBl
eGFtcGxlIHRoZSBpOTE1IGN1cnJlbnRseSBkcml2ZXItcHJpdmF0ZSAKPiBkbWFfZmVuY2Vfd29y
ayBhdm9pZCBhbGwgdGhlc2UgcHJvYmxlbXMsIGJ1dCB3ZSdyZSBhdHRlbXB0aW5nIHRvIAo+IGFk
ZHJlc3MgaXNzdWVzIGluIGNvbW1vbiBjb2RlIHJhdGhlciB0aGFuIHJlLWludmVudGluZyBzdHVm
ZiBpbnRlcm5hbGx5KS4KCkkgZG9uJ3QgdGhpbmsgdGhhdCBhIGRtYV9mZW5jZV9hcnJheSBvciBk
bWFfZmVuY2VfY2hhaW4gaXMgdGhlIHJpZ2h0IAp0aGluZyB0byBiZWdpbiB3aXRoIGluIHRob3Nl
IHVzZSBjYXNlcy4KCldoZW4geW91IHdhbnQgdG8gY29hbGVzY2UgdGhlIGRlcGVuZGVuY2llcyBm
b3IgYSBqb2IgeW91IGNvdWxkIGVpdGhlciAKdXNlIGFuIHhhcnJheSBsaWtlIERhbmllbCBkaWQg
Zm9yIHRoZSBzY2hlZHVsZXIgb3Igc29tZSBoYXNodGFibGUgbGlrZSAKd2UgdXNlIGluIGFtZGdw
dS4gQnV0IEkgZG9uJ3Qgc2VlIHRoZSBuZWVkIGZvciBleHBvc2luZyB0aGUgZG1hX2ZlbmNlIApp
bnRlcmZhY2UgZm9yIHRob3NlLgoKQW5kIHdoeSBkbyB5b3UgdXNlIGRtYV9mZW5jZV9jaGFpbiB0
byBnZW5lcmF0ZSBhIHRpbWVsaW5lIGZvciBUVE0/IFRoYXQgCnNob3VsZCBjb21lIG5hdHVyYWxs
eSBiZWNhdXNlIGFsbCB0aGUgbW92ZXMgbXVzdCBiZSBvcmRlcmVkLgoKUmVnYXJkcywKQ2hyaXN0
aWFuLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

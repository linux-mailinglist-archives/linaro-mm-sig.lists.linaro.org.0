Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5DB464799
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 08:06:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C0EF617EF
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 07:06:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 10AD4603EF; Wed,  1 Dec 2021 07:06:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C38C060B02;
	Wed,  1 Dec 2021 07:06:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B4451603EF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 07:05:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A99A660B02; Wed,  1 Dec 2021 07:05:59 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2080.outbound.protection.outlook.com [40.107.223.80])
 by lists.linaro.org (Postfix) with ESMTPS id 902BB603EF
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 07:05:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f6P9QvjCxCP1+DzScIWT8HDpsGR7WNuLZknL9RFITG+5YqyVbzDtRJSdi66qobTAS0qK8dBfRALipVw8BhwQSSv/BOHuiyzWON+Hb75j+HloFocTotu5FGQqww8BhJ8z74DUpLPbkDuEzcvEBMoHpRdPWcM67XmBhSaCKuops4e1i9tQkf0Emrkqbp1HCv+1rBjQlEojfEqJGNMxEugtsTRQGk8IIa+0pgJ3ndt4Z3xdNOUxkXUEjEQDHkFh4AT8mTsnU7CnwrsRIDxHppde5F3PIVPiG/ywBXoarigvGqzwHrwaMzF5Ci+O+hDXj4MmJ6F8wT4sL+axVFoY0i5rKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jw6Xv/7Vo1gPfDB4h+QTEHjxqupL25VzXiiPo1UqU0s=;
 b=Z9P4HhwG7oaU5Mj8HadSVRURpizjIt6fmAhlFMA6DILw428AGxAa5J5MDvmYzr0cxhWABhdo+IoRKrwGi895nD5Fcg+jqTeif9gC1kzpy+YuBHPx3DSaSNxoWaGp4XDHFWlDEBHnCOukok20VgtWMy3vcGqnWFmEeLufhViQByVtnfAhZzQQZJQP4IycE2AkcbpRzRIgFsgcAwC3xt2hTJbqGAOtPSCWqHwfSOgo0Z7WcnJ4O8KefT49mLL1r8rPvQUaECcx9SRNVTjeYLXofwOyYMRwkXpwpycftF7j4iwx1rRmKo8PjbCM28JT0jK8vwo/0ul2YCBTFPth6M+fMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jw6Xv/7Vo1gPfDB4h+QTEHjxqupL25VzXiiPo1UqU0s=;
 b=U4d1A769F5onzkSGz843Vlkqb5owYsr8DuaXUfqj/zi/cZWCoqBM1FPCf3e599JWxF3rCuAxvoTTnk2oI1BXKQTuEMQBgTBRi5l1zvIXn3tIg4g/POYe4zKSQmPHuoO3d2VWw7KJT4L8qsCd932RQfTqi4Qre3ZlixFOl9NavkA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MW2PR12MB2490.namprd12.prod.outlook.com
 (2603:10b6:907:9::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Wed, 1 Dec
 2021 07:05:53 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4713.027; Wed, 1 Dec 2021
 07:05:53 +0000
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <193e36bd-ba64-1358-8178-73ee3afc3c41@amd.com>
Date: Wed, 1 Dec 2021 08:05:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <49cf2d43-9a8a-7738-0889-7e16b0256249@linux.intel.com>
Content-Language: en-US
X-ClientProxiedBy: AS8P250CA0003.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:330::8) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [192.168.178.21] (87.176.183.123) by
 AS8P250CA0003.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:330::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.22 via Frontend Transport; Wed, 1 Dec 2021 07:05:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e4cb193-b648-4a8a-efe9-08d9b499039b
X-MS-TrafficTypeDiagnostic: MW2PR12MB2490:
X-Microsoft-Antispam-PRVS: <MW2PR12MB249012E3D6560464F80F3CEA83689@MW2PR12MB2490.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FSRz5giSbIKHmMVX+q5NaLcQcfSUkt0Is9fq59dUOg/SC+OGWhd4Mk2sf5NEFyATac+aAWFXPlypYi96zyCGPe75Dda1Q9czuYtq+1J1ncDbA0PDRwxk/SWqoCy3GUqfGCCDw0NWutgyp0/Jg+EF0DfdUKXUbGhn3uY1fLyRIjx1wR5b+UjBjff5mRqUXHgHfimJHE8CT4GAkLwMDIkTKCorCefLLUmCCLqURiJhnaZJkgo0C0lpM1R6VR4r//BF7oG6KuqSdtanBzlKsJ4wAguQLTsy2RyEu//CRAixun32rtvdhHpodWg1DxzUpT5kYdSjBoVWjdnedcY0sX+tfef51Fhhbv2MVQsrwcjUMb5/gc2vBGTvqE52psb2ocw32qW0AHHO3vZ73izRgb3OH2PcNQKLNc5YBHYxiCakIudhvDiqTN/aQEtNjnyoS5j/6IvJDxfXUBhdqbLXWH5lakd0Km1+iVn5vuEs3gn1mCtdTF1dC+0GDkK0ELlrrwbD1x8i7pDWAyFl7X/4GX0ejdl/Qc8Q3sa6s9hjisgu1zED/BWog205/E+dYEnoZzuzN6gxzHncfLB/Tk10tFda64Ub5VHV2bRoBvDzhkjo+BAG/rioVyNMf5zz4bjqYALwwqDB5KWmIZlwnaXnCY2JWOijK9j9Dtb1pX5/aiLo43CKT72BriYP1RszopCaUc5D7H7HZ69PUDqJ0twI3ap6XI1el3z32da/ofEatZq0QMrZYSNuQqDq9eJDEeb32e0k
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(8936002)(86362001)(31686004)(6486002)(508600001)(2906002)(4326008)(26005)(110136005)(4001150100001)(8676002)(6666004)(53546011)(66574015)(5660300002)(36756003)(66556008)(31696002)(16576012)(83380400001)(316002)(66946007)(38100700002)(956004)(2616005)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1RQQy9yYVg2QUwwVHNHL1JIemppQ3VzQXdBd2hjRHFhQkI4ekp2MTZQMDJ2?=
 =?utf-8?B?cklkb0VUd0VMZmtiRmdWSG1iYkdhM3R1UlVuRVhBc3UwZVNZT2doQWJzM3pB?=
 =?utf-8?B?R0FJMVVKUElGaDcrS05sUytSL1NvVXFYaE5zZnlJczdZRTZyZTQ0RDhWejYv?=
 =?utf-8?B?NUd5NVlCQngyK3pWakVvc3RSY1hKYzM4V3NFakhaM0J2WHcyT3NoQldtYS9U?=
 =?utf-8?B?Lzh4S0NWWmx1VmsrbDQ5Y1ZMSlYrYi9jV1F5Mk9mTnIvMmFnd0g2d2hyRG41?=
 =?utf-8?B?ejFZV29OSlBydkFVY0dmclhPRG1GNXJqYWEycFVMMEplVzB6UVFuNnExbjA5?=
 =?utf-8?B?Z0F6MXM2OVFCaXk4S2cwRGNLYjY2OXRqdEFaTy9KUXAxVHVlTmF1UE1idXpy?=
 =?utf-8?B?dkxlRzd6VkZwUFFiTUY4eHgxNUxKUnNBYnM0QXAzb1hQVDdTUzFicG1IWTk0?=
 =?utf-8?B?MnE2dWdoZEtIQzNETEVrdWtMa0d1UU5nbHFUSTlOdFo1OWh2V1BYSnNhbUZv?=
 =?utf-8?B?bGI3SGhLVzkwZzBWQXhvK2l4VWFxK2dBNTIxNzVqOXFGakwyTXUvak9xYTNT?=
 =?utf-8?B?Mm1TR3ZZalFnNTJqZGl4bEgyV2xiMlVFNzN5RDRhejRGSTZyODRJOEYzeHpC?=
 =?utf-8?B?ZllRaFRFZjhlMU9tK2RuRXQzTmp4Y2QxQStiZklCU2NNMEJyUzVvVGN1TlZa?=
 =?utf-8?B?ME85VFNJc3c4Q01ESVlOVDBDa3NqcDl6cUZmQUNJaGdKb2l1eXlNOVpwYmVk?=
 =?utf-8?B?d3NHR0NTY1FVQnN4by9DSFNDU2tlbEk5aUhMNk1vV29LeElWOG1MbFladXFn?=
 =?utf-8?B?eHZXemd2WDh1bFl4WStzckxMYVNkR2tGZTEyNGo3eHRzdmVwSjFWeGJLc1Nl?=
 =?utf-8?B?dFlGb05LRVFhRU5zTzdqaTlZZjZIcS9uSFoxRWZXOTZVc2tsb0drWUIrVGJh?=
 =?utf-8?B?NlJpNkZjbmJxMFo5WW9MQ1BTMlZEVE5JbDE4V3k4SEVHUWQ5aGhublRuVC9I?=
 =?utf-8?B?bEJNaTF2QnFoallXdlZIVUsvRlhjUE1xWlpaTmczOGE1M3BZS0xJQ1pCV3lz?=
 =?utf-8?B?eW9IaGQrLzQ2Q3NMNDV4aVlvRHRGaWwrdXBxMkllaHVtUWR5ZTM2TXBzNXdQ?=
 =?utf-8?B?VUtoVmRaRUl6QnBGdzlvNzZBejFDOVFiaklNWnNRUW1pRDlXeUVhQWQxZHpi?=
 =?utf-8?B?M05FK254d1Z0dHYvWmtNZmRkWkVMaEpzS01HTTZ2amtqVWxUNkpPMVdCb0dQ?=
 =?utf-8?B?UWRNTEd1MTd2YS9iS3JMck5rN2lvVzlmdGhTZ3NqYWtVcXF2WWtzY29zbWpz?=
 =?utf-8?B?enVDaUN4M0dzanI5VmFaU3dWME5wZFZJUTg4RUdKSUVBZzNKY3B6a1hHYjVz?=
 =?utf-8?B?R0hFb2VIZmJzQ3B2Rm5hU0RBRmVGdjB0VmZPM0NDeHRIeUVweXUvZlQ2V1Fs?=
 =?utf-8?B?TFNlUXRhdjRraUNockVNWjJOTDNjNnhQMlgyenAzbnFURVVEL2tOTXQ2Yi9F?=
 =?utf-8?B?NXkyOUxZOURyVXpEamZaNjJFelEwUitWWmVLTEdvbXhwdnpWOUlFcjViMzdE?=
 =?utf-8?B?aEUrbGlITjhkZklxVVV3OE50QjhzR1ZoVmtJTU1qVGg4dFd6UVdNelA4K0tm?=
 =?utf-8?B?YmFkZUJIRFgrRi9yS2FqeC9NRGFSamtGR2FsQVNXSWVuOWl1ZHB5WEptOHBx?=
 =?utf-8?B?L0dDWFcwTSt4TjhtdWhmcVFvUklwNzVjVzJtdExROFgrL3JoV1ovRExjRTQ0?=
 =?utf-8?B?REwvVXlyZWlmVE5WOWFpQmZCNEcrNmhTNGl2M3JNUUxIZkNDSVBlb0lDbFpr?=
 =?utf-8?B?eDUwWlhWbnNrTUdmYTZyRVlKWUY0YXNKTmJlYUJZZEJIYmRBalhqNDFub0F4?=
 =?utf-8?B?MGl4R2xJdVdFUktiK0lXYXNIdC96ekdjeUN2TklOUGpSMGZqa012QTF5NW1D?=
 =?utf-8?B?VDhETTkrakFDL0FvT25MbGpueTdPeS9neUl2c0xKWUhwQ0dZc3lweGxQOURq?=
 =?utf-8?B?aHNIVDlRQ05XMGM4K3hHejNqTlhka1BsNGxmbmRheGd3OHJ3akhsdUlIN2RK?=
 =?utf-8?B?TWJKdmJ0bHdRYStNZ1dGZVRCQURLRFBNNTl6cEUyd3ljcG1tM3QvRWE4WFpP?=
 =?utf-8?Q?d6HY=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e4cb193-b648-4a8a-efe9-08d9b499039b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 07:05:53.4802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tocEvgc+rjF8UzDYuB/bpJxgSh2Hyf+5eRrHmSr2vaU0qHZnuLVVdKngB2Vfdmk1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR12MB2490
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

QW0gMzAuMTEuMjEgdW0gMjA6Mjcgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPgo+IE9uIDEx
LzMwLzIxIDE5OjEyLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4gT24gVHVlLCAyMDIxLTEx
LTMwIGF0IDE2OjAyICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4gQW0gMzAuMTEu
MjEgdW0gMTU6MzUgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+PiBPbiBUdWUsIDIwMjEt
MTEtMzAgYXQgMTQ6MjYgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4+IEFtIDMw
LjExLjIxIHVtIDEzOjU2IHNjaHJpZWIgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+PiBPbiAxMS8z
MC8yMSAxMzo0MiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+Pj4+PiBBbSAzMC4xMS4yMSB1
bSAxMzozMSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4+Pj4+PiBbU05JUF0KPj4+Pj4+
Pj4+IE90aGVyIHRoYW4gdGhhdCwgSSBkaWRuJ3QgaW52ZXN0aWdhdGUgdGhlIG5lc3RpbmcgZmFp
bHMKPj4+Pj4+Pj4+IGVub3VnaCB0bwo+Pj4+Pj4+Pj4gc2F5IEkgY2FuIGFjY3VyYXRlbHkgcmV2
aWV3IHRoaXMuIDopCj4+Pj4+Pj4+IEJhc2ljYWxseSB0aGUgcHJvYmxlbSBpcyB0aGF0IHdpdGhp
biBlbmFibGVfc2lnbmFsaW5nKCkKPj4+Pj4+Pj4gd2hpY2gKPj4+Pj4+Pj4gaXMKPj4+Pj4+Pj4g
Y2FsbGVkIHdpdGggdGhlIGRtYV9mZW5jZSBsb2NrIGhlbGQsIHdlIHRha2UgdGhlIGRtYV9mZW5j
ZQo+Pj4+Pj4+PiBsb2NrCj4+Pj4+Pj4+IG9mCj4+Pj4+Pj4+IGFub3RoZXIgZmVuY2UuIElmIHRo
YXQgb3RoZXIgZmVuY2UgaXMgYSBkbWFfZmVuY2VfYXJyYXksIG9yCj4+Pj4+Pj4+IGEKPj4+Pj4+
Pj4gZG1hX2ZlbmNlX2NoYWluIHdoaWNoIGluIHR1cm4gdHJpZXMgdG8gbG9jayBhCj4+Pj4+Pj4+
IGRtYV9mZW5jZV9hcnJheQo+Pj4+Pj4+PiB3ZSBoaXQKPj4+Pj4+Pj4gYSBzcGxhdC4KPj4+Pj4+
PiBZZWFoLCBJIGFscmVhZHkgdGhvdWdodCB0aGF0IHlvdSBjb25zdHJ1Y3RlZCBzb21ldGhpbmcg
bGlrZQo+Pj4+Pj4+IHRoYXQuCj4+Pj4+Pj4KPj4+Pj4+PiBZb3UgZ2V0IHRoZSBzcGxhdCBiZWNh
dXNlIHdoYXQgeW91IGRvIGhlcmUgaXMgaWxsZWdhbCwgeW91Cj4+Pj4+Pj4gY2FuJ3QKPj4+Pj4+
PiBtaXgKPj4+Pj4+PiBkbWFfZmVuY2VfYXJyYXkgYW5kIGRtYV9mZW5jZV9jaGFpbiBsaWtlIHRo
aXMgb3IgeW91IGNhbiBlbmQKPj4+Pj4+PiB1cAo+Pj4+Pj4+IGluIGEKPj4+Pj4+PiBzdGFjayBj
b3JydXB0aW9uLgo+Pj4+Pj4gSG1tLiBPaywgc28gd2hhdCBpcyB0aGUgc3RhY2sgY29ycnVwdGlv
biwgaXMgaXQgdGhhdCB0aGUKPj4+Pj4+IGVuYWJsZV9zaWduYWxpbmcoKSB3aWxsIGVuZCB1cCB3
aXRoIGVuZGxlc3MgcmVjdXJzaW9uPyBJZiBzbywKPj4+Pj4+IHdvdWxkbid0Cj4+Pj4+PiBpdCBi
ZSBtb3JlIHVzYWJsZSB3ZSBicmVhayB0aGF0IHJlY3Vyc2lvbiBjaGFpbiBhbmQgYWxsb3cgYQo+
Pj4+Pj4gbW9yZQo+Pj4+Pj4gZ2VuZXJhbCB1c2U/Cj4+Pj4+IFRoZSBwcm9ibGVtIGlzIHRoYXQg
dGhpcyBpcyBub3QgZWFzaWx5IHBvc3NpYmxlIGZvcgo+Pj4+PiBkbWFfZmVuY2VfYXJyYXkKPj4+
Pj4gY29udGFpbmVycy4gSnVzdCBpbWFnaW5lIHRoYXQgeW91IGRyb3AgdGhlIGxhc3QgcmVmZXJl
bmNlIHRvIHRoZQo+Pj4+PiBjb250YWluaW5nIGZlbmNlcyBkdXJpbmcgZG1hX2ZlbmNlX2FycmF5
IGRlc3RydWN0aW9uIGlmIGFueSBvZgo+Pj4+PiB0aGUKPj4+Pj4gY29udGFpbmVkIGZlbmNlcyBp
cyBhbm90aGVyIGNvbnRhaW5lciB5b3UgY2FuIGVhc2lseSBydW4gaW50bwo+Pj4+PiByZWN1cnNp
b24KPj4+Pj4gYW5kIHdpdGggdGhhdCBzdGFjayBjb3JydXB0aW9uLgo+Pj4+IEluZGVlZCwgdGhh
dCB3b3VsZCByZXF1aXJlIHNvbWUgZGVlcGVyIHN1cmdlcnkuCj4+Pj4KPj4+Pj4gVGhhdCdzIG9u
ZSBvZiB0aGUgbWFqb3IgcmVhc29ucyBJIGNhbWUgdXAgd2l0aCB0aGUKPj4+Pj4gZG1hX2ZlbmNl
X2NoYWluCj4+Pj4+IGNvbnRhaW5lci4gVGhpcyBvbmUgeW91IGNhbiBjaGFpbiBhbnkgbnVtYmVy
IG9mIGVsZW1lbnRzIHRvZ2V0aGVyCj4+Pj4+IHdpdGhvdXQgcnVubmluZyBpbnRvIGFueSByZWN1
cnNpb24uCj4+Pj4+Cj4+Pj4+PiBBbHNvIHdoYXQgYXJlIHRoZSBtaXhpbmcgcnVsZXMgYmV0d2Vl
biB0aGVzZT8gTmV2ZXIgdXNlIGEKPj4+Pj4+IGRtYS1mZW5jZS1jaGFpbiBhcyBvbmUgb2YgdGhl
IGFycmF5IGZlbmNlcyBhbmQgbmV2ZXIgdXNlIGEKPj4+Pj4+IGRtYS1mZW5jZS1hcnJheSBhcyBh
IGRtYS1mZW5jZS1jaGFpbiBmZW5jZT8KPj4+Pj4gWW91IGNhbid0IGFkZCBhbnkgb3RoZXIgY29u
dGFpbmVyIHRvIGEgZG1hX2ZlbmNlX2FycmF5LCBuZWl0aGVyCj4+Pj4+IG90aGVyCj4+Pj4+IGRt
YV9mZW5jZV9hcnJheSBpbnN0YW5jZXMgbm9yIGRtYV9mZW5jZV9jaGFpbiBpbnN0YW5jZXMuCj4+
Pj4+Cj4+Pj4+IElJUkMgYXQgbGVhc3QgdGVjaG5pY2FsbHkgYSBkbWFfZmVuY2VfY2hhaW4gY2Fu
IGNvbnRhaW4gYQo+Pj4+PiBkbWFfZmVuY2VfYXJyYXkgaWYgeW91IGFic29sdXRlbHkgbmVlZCB0
aGF0LCBidXQgRGFuaWVsLCBKYXNvbgo+Pj4+PiBhbmQgSQo+Pj4+PiBhbHJlYWR5IGhhZCB0aGUg
c2FtZSBkaXNjdXNzaW9uIGEgd2hpbGUgYmFjayBhbmQgY2FtZSB0byB0aGUKPj4+Pj4gY29uY2x1
c2lvbgo+Pj4+PiB0byBhdm9pZCB0aGF0IGFzIHdlbGwgaWYgcG9zc2libGUuCj4+Pj4gWWVzLCB0
aGlzIGlzIGFjdHVhbGx5IHRoZSB1c2UtY2FzZS4gQnV0IHdoYXQgSSBjYW4ndCBlYXNpbHkKPj4+
PiBndWFyYW50ZWUKPj4+PiBpcyB0aGF0IHRoYXQgZG1hX2ZlbmNlX2NoYWluIGlzbid0IGZlZCBp
bnRvIGEgZG1hX2ZlbmNlX2FycmF5Cj4+Pj4gc29tZXdoZXJlCj4+Pj4gZWxzZS4gSG93IGRvIHlv
dSB0eXBpY2FsbHkgYXZvaWQgdGhhdD8KPj4+Pgo+Pj4+IE1lYW53aGlsZSBJIGd1ZXNzIEkgbmVl
ZCB0byB0YWtlIGEgZGlmZmVyZW50IGFwcHJvYWNoIGluIHRoZSBkcml2ZXIKPj4+PiB0bwo+Pj4+
IGF2b2lkIHRoaXMgYWx0b2dldGhlci4KPj4+IEphc29uIGFuZCBJIGNhbWUgdXAgd2l0aCBhIGRl
ZXAgZGl2ZSBpdGVyYXRvciBmb3IgaGlzIHVzZSBjYXNlLCBidXQgSQo+Pj4gdGhpbmsgd2UgZG9u
J3Qgd2FudCB0byB1c2UgdGhhdCBhbnkgbW9yZSBhZnRlciBteSBkbWFfcmVzdiByZXdvcmsuCj4+
Pgo+Pj4gSW4gb3RoZXIgd29yZHMgd2hlbiB5b3UgbmVlZCB0byBjcmVhdGUgYSBuZXcgZG1hX2Zl
bmNlX2FycmF5IHlvdQo+Pj4gZmxhdHRlbgo+Pj4gb3V0IHRoZSBleGlzdGluZyBjb25zdHJ1Y3Qg
d2hpY2ggaXMgYXQgd29yc3QgY2FzZQo+Pj4gZG1hX2ZlbmNlX2NoYWluLT5kbWFfZmVuY2VfYXJy
YXktPmRtYV9mZW5jZS4KPj4gT2ssIEFyZSB0aGVyZSBhbnkgY3Jvc3MtZHJpdmVyIGNvbnRyYWN0
IGhlcmUsIExpa2UgZXZlcnkgZHJpdmVyIHVzaW5nIGEKPj4gZG1hX2ZlbmNlX2FycmF5IG5lZWQg
dG8gY2hlY2sgZm9yIGRtYV9mZW5jZV9jaGFpbiBhbmQgZmxhdHRlbiBsaWtlCj4+IGFib3ZlPwoK
U28gZmFyIHdlIG9ubHkgZGlzY3Vzc2VkIHRoYXQgb24gdGhlIG1haWxpbmcgbGlzdCBidXQgaGF2
ZW4ndCBtYWRlIGFueSAKZG9jdW1lbnRhdGlvbiBmb3IgdGhhdC4KCj4+Cj4+IC9UaG9tYXMKPgo+
IE9oLCBhbmQgYSBmb2xsb3cgdXAgcXVlc3Rpb246Cj4KPiBJZiB0aGVyZSB3YXMgYSB3YXkgdG8g
YnJlYWsgdGhlIHJlY3Vyc2lvbiBvbiBmaW5hbCBwdXQoKSAodXNpbmcgdGhlIAo+IHNhbWUgYmFz
aWMgYXBwcm9hY2ggYXMgcGF0Y2ggMiBpbiB0aGlzIHNlcmllcyB1c2VzIHRvIGJyZWFrIHJlY3Vy
c2lvbiAKPiBpbiBlbmFibGVfc2lnbmFsaW5nKCkpLCBzbyB0aGF0IG5vbmUgb2YgdGhlc2UgY29u
dGFpbmVycyBkaWQgcmVxdWlyZSAKPiBhbnkgc3BlY2lhbCB0cmVhdG1lbnQsIHdvdWxkIGl0IGJl
IHdvcnRoIHB1cnN1aW5nPyBJIGd1ZXNzIGl0IG1pZ2h0IGJlIAo+IHBvc3NpYmxlIGJ5IGhhdmlu
ZyB0aGUgY2FsbGJhY2tzIGRyb3AgdGhlIHJlZmVyZW5jZXMgcmF0aGVyIHRoYW4gdGhlIAo+IGxv
b3AgaW4gdGhlIGZpbmFsIHB1dC4gKyBhIGNvdXBsZSBvZiBjaGFuZ2VzIGluIGNvZGUgaXRlcmF0
aW5nIG92ZXIgCj4gdGhlIGZlbmNlIHBvaW50ZXJzLgoKVGhhdCB3b24ndCByZWFsbHkgaGVscCwg
eW91IGp1c3QgbW92ZSB0aGUgcmVjdXJzaW9uIGZyb20gdGhlIGZpbmFsIHB1dCAKaW50byB0aGUg
Y2FsbGJhY2suCgpXaGF0IGNvdWxkIGJlIHBvc3NpYmxlIGlzIHRvIHVzZSBhbiB3b3JrIGl0ZW0g
Zm9yIGFueSBwb3NzaWJsZSAKb3BlcmF0aW9uLCBlLmcuIGVuYWJsaW5nLCBzaWduYWxpbmcgYW5k
IGRlc3RydWN0aW9uLiBCdXQgaW4gdGhlIGxhc3QgCmRpc2N1c3Npb24gZXZlcnlib2R5IGFncmVl
ZCB0aGF0IGl0IGlzIGJldHRlciB0byBqdXN0IGZsYXR0ZW4gb3V0IHRoZSBhcnJheS4KCkNocmlz
dGlhbi4KCj4KPgo+IC9UaG9tYXMKPgo+Pgo+Pj4gUmVnYXJkcywKPj4+IENocmlzdGlhbi4KPj4+
Cj4+Pj4gL1Rob21hcwo+Pj4+Cj4+Pj4KPj4+Pj4gUmVnYXJkcywKPj4+Pj4gQ2hyaXN0aWFuLgo+
Pj4+Pgo+Pj4+Pj4gL1Rob21hcwo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+PiBS
ZWdhcmRzLAo+Pj4+Pj4+IENocmlzdGlhbi4KPj4+Pj4+Pgo+Pj4+Pj4+PiBCdXQgSSdsbCB1cGRh
dGUgdGhlIGNvbW1pdCBtZXNzYWdlIHdpdGggYSB0eXBpY2FsIHNwbGF0Lgo+Pj4+Pj4+Pgo+Pj4+
Pj4+PiAvVGhvbWFzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=

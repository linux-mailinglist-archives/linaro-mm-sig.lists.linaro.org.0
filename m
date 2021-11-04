Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A86445016
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Nov 2021 09:21:05 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 25C3E60919
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Nov 2021 08:21:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9EE3660ADB; Thu,  4 Nov 2021 08:21:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DCBA06037A;
	Thu,  4 Nov 2021 08:20:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4265460270
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Nov 2021 08:20:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 403E26037A; Thu,  4 Nov 2021 08:20:56 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2042.outbound.protection.outlook.com [40.107.243.42])
 by lists.linaro.org (Postfix) with ESMTPS id 27CA560270
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Nov 2021 08:20:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lgCPJIXVZmk6LpGA4iYO2mE18ZPhnuW2iICBF6UyJY5W2CiK4QbZUoP7+dmdZUco6BLr7ql2y0VSwM7QLlFRdMaFOcBYVbtOngaesNMcAUfncufwOyuKOhac/nRK+faRj9NnLmUtjoKKyKlGVp9NDSV96cK5H3W8evcySK9rREm82ODuEWcrlWq1QR6JNZvch+A7bgnLAUFVNkXJ8UloQ0j807s7iRsGfJlHRMJOk3F/0UNiRcjjhBs4IOkifPu6uB+iv7mVZjHDRfs4u/npQeXZSGrNSfEvSoqWMmhUrjDfVO0kq1+daM+qUYZddzq2RVW+TEcf0UHdG4x77ruVQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O+3i3o7LynXrCaVGmQnK0Kg/tQoYi4azm67c2lysRPY=;
 b=bjjKVOgVFOIjr7i5kxMEF/myiCCK8s+85kWLlxxRtM4adS20ZdSiWVaeZY88tWhNL2ibQ/gOlPJWYZhUNN4Nc2+4sPsMKgz4iwKjIOO2b2wtqLnWtXyp+xo827B8oOG8i1ihR6HqGXaS1+0UbcDUFBRBbO+UiYmSdnyf605vV1RMZ8v3YLBbFwDeUDiqLdCSS4PpNtDvBWReYEXpskaLRkR794KWTuUpaUBC5Y0diEqdVIzNQdsKQhTFNFNGDe1caZqAUVoIl9ATSJn9/tFApd2XWiZNlQ33fhJSy64f/ToAWZbptPDo7hlCLwumnBY+avV+dP7L9TaAQGqGjmPRiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+3i3o7LynXrCaVGmQnK0Kg/tQoYi4azm67c2lysRPY=;
 b=HcwkMabfIwtjO35JOc2gUVNVE346Qvrev0KwFbXWerQFS0sN5+4I97eGf89aRQghFcyOcFKDyrC5J/+Fcfj0WjdlgYE7PTI1Zufnierx/gcExTfDJOpJytAjCcqN48UqyZaGncpyVTBrSF0KjCATkir3OunKBtpfspRQiTASyMk=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR1201MB0112.namprd12.prod.outlook.com
 (2603:10b6:301:5a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Thu, 4 Nov
 2021 08:20:50 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::2d02:26e7:a2d0:3769%5]) with mapi id 15.20.4649.020; Thu, 4 Nov 2021
 08:20:50 +0000
To: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20210723075857.4065-1-michel@daenzer.net>
 <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
 <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
 <884050b3-5e7d-c00b-5467-290cfc57e0ea@gmail.com>
 <20cfea36-a8cc-7bd1-9604-57efdf4710e2@daenzer.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <c0265dc9-15c4-e838-f183-3e9b82a6ff50@amd.com>
Date: Thu, 4 Nov 2021 09:20:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20cfea36-a8cc-7bd1-9604-57efdf4710e2@daenzer.net>
Content-Language: en-US
X-ClientProxiedBy: AS9PR06CA0286.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::32) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [192.168.178.21] (91.14.161.181) by
 AS9PR06CA0286.eurprd06.prod.outlook.com (2603:10a6:20b:45a::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend
 Transport; Thu, 4 Nov 2021 08:20:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de6ddc43-be41-40e0-b920-08d99f6c01ed
X-MS-TrafficTypeDiagnostic: MWHPR1201MB0112:
X-Microsoft-Antispam-PRVS: <MWHPR1201MB0112A3AFA79F378E05A36FEB838D9@MWHPR1201MB0112.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9hkZZIujAOmhusP8USiWM9hI1ALSDo4eDYLmtjjhsSCtgeCfAI8szlbhqm9hFkaNLYNcdjK9s6OZUEiSmJRKptUT4QoW5PkTrEukWMQFPQby0kd7yXRYFTiEOiC9BxDapgg/WyXTkGP1OM26GZJrPQPxWaEupRpPIyASPs9yLzviAEKHN437aPABsPyxAHn1rCIsk0+7SvCAUUioHWdy9RMBhQe0Fdl3T/6YhjAIiCOEw2qHVH6j8paHLCaAOws48rVPFzhSQ2fp63AAIHHh8onAEZJEICVLx6SygySFjJBcG69Aewf+PDyHyvbtPZ6YGMX4bKXuMEDdvV+dE8ydIUl5QcTOu0Sgy+FCavsiE7sWsCuSM9lb7vhJsV8Y0hteK1MSkfa4rKL2qyPIPVAr3K3zLcDBDOYvCC/6vIZy7Pqh66nqSh+qufioHxQhMbcqDXoRvSuGyZqGSIlSGO2d+DxU8j0pqNfqD9g05o8iL1k8HrXOM91mUN5MKbDdxnu0lIoFa1fLeDNqy8lVbyetGymuWewxJLcLVcrCH9uYwdVLRUrO7DhKf+JR7xpayamZ/xT1+IRMS1EWKp1ff9fM+mbeOU+736+c7SGqaYBpBy05KuTMcsTEw4A8/VIXEbMXmDz+1w5S+n8FEhC+4zqtcLgweumvg4cdPKRK8lwSqA5DFZfz+hShQMe5JdWjqvRmFM1vzS2E3+lO7VKZn4b3SgNo9iAtgfZPLmwrFHbUgXQ4RYb8iyOk4rnzPJdkhAGL+wCPH6x94xIQB90BbqJcFag1Zgr4IjNUUFPh2Dp0ExnWN1ajc2Vl+gRbRULUbthv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(38100700002)(8936002)(8676002)(31696002)(83380400001)(66476007)(186003)(66946007)(66556008)(53546011)(966005)(26005)(86362001)(16576012)(2906002)(6486002)(36756003)(508600001)(110136005)(6666004)(956004)(4326008)(45080400002)(316002)(2616005)(31686004)(66574015)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVBPVFFXaHNNUXhtczlHcllBcHRkMGFFODVadlYrOWFqRkQ1cTNoN3FMcklS?=
 =?utf-8?B?YitGU1ZJbVVJM0hXNzAwL2hYOHZXSDFzWnRlM1Q0VHA2TkUrRFV4Y0JnUDlH?=
 =?utf-8?B?U1hUL2JodmNmUGZralY2cWxnR3pyTHpSd0hqa2RMM0hQV0M0dnF5RE5BV0d1?=
 =?utf-8?B?ZktmcjN5QjR2UEE4RldoWXlBQzFtMVpJZU9zdGI3SlRBeTZIOWhTTUFWc09n?=
 =?utf-8?B?ZHNFSW16MFBZQjdnMEY4Y2w4QmJyL051MHlnaFhKV3FvbFRNb2ZVb0J1K2w2?=
 =?utf-8?B?dC9SdmV3Y2d6ZWJzMVlIaW5SbDEvUy9rVDNOWDJuNThMdTdZd0tsOC9xSDhR?=
 =?utf-8?B?NVNvYmIycS9vVTlVb2crWmFQNEI3dmF2bzFTSHNDSEZ5MWJhOWR6aUNRekFi?=
 =?utf-8?B?OWxDNlA4ajZ4cmxwczNNRERlVWhrWUxHYVc0UHByRUc0WWJ2MEUvNXV1NTlt?=
 =?utf-8?B?a3ZsQW03aDhMamZjYVlHUnUzVjlnNkxMcTY1OUVFS09NRVBVU1NheDhWOHFL?=
 =?utf-8?B?dGZZa2xua3I0SGlDbzVWOFQxa0xtd05ydUxXY1A0ZmpLd1A4dWlnWUlVTDF2?=
 =?utf-8?B?aWozK3lPTDVZcUgxNE8rVC83SzhWSjBIeUtPZWtqU3c1aWZuL2JqeDBvd0tP?=
 =?utf-8?B?ZmcyaDBDQkd2WEx0aEg5SVJXZERlM3hUYUNQOXJ5OWVVUEx1b2Y1eVZGZWpj?=
 =?utf-8?B?d3FqaC9TV3FQYUlyVjBUWWw2UGoyNjhHaVhaelpJU2Q2WkYyYUtKWnNRdWtJ?=
 =?utf-8?B?bFdDNjRYVEwwVnBZQUl6R3lFYUZYdFlJNCtOQXRGY21IZmthNE9uUDJ0TFBV?=
 =?utf-8?B?aXYxdFVqcE5EelhCVTJaTXlndnI1ZGZ0MnpidGhwMkY4K2ZsaFRpNzQwSlc5?=
 =?utf-8?B?LzBPWU5ydWthZSttd1hQYXhmcXFQdDdKK1g1d0M0Z2xkVTJsWmJ5NzlzZEhW?=
 =?utf-8?B?OXN2NkZSSTVIdXl4TVhGYUZieEpzY094SGFtQUV4dFR3dU9uSVVMTGNKU1JB?=
 =?utf-8?B?ZUdWaGFCOU1idzhENzNKdHZncy9rL3dKVENCNWFMVFh4QUxCR2ZHbzhRV2E5?=
 =?utf-8?B?dXlTZHYyeGttellEa25KZ24xeGdQRVFCR3ljRitPcTE2eDhmek1kNW9wdmhU?=
 =?utf-8?B?bndvNmdkUGlOakkwNDZldDZMNUNScm93RFY2akpUb3phbEN0Tk9Yb2JHZkhI?=
 =?utf-8?B?ckduZk42LzdhdjMzWW5IQWk0SHhJdkd6SDhoVzJoNlVEUjNxVktPOG1XV2NX?=
 =?utf-8?B?Rks4Sk9DWXVBQlovZmJ1ZGRvenplYXV4Tm1USjJYa3NsbFg2NVNsQzNEUjds?=
 =?utf-8?B?cHI3Vi9vbEtoc2Y0STE2eEU1NHRqVjZTWlpFSUJ3OER3anA4cHliRHZML2Yr?=
 =?utf-8?B?aUlzZGVCSzVURS9xMzZka1hhLzkyNUZRbzZld2VhbUE2N1FGa2RSaUdUQTBQ?=
 =?utf-8?B?MmY1cHArYWg1VVU0eW1wQ0dIa2NPSzBRNlNFWXNZTkwyeDZra3lzbjUwQVh6?=
 =?utf-8?B?WXJjbXlXNnBXVitDMVpkMTArcktkQklqTTF5S05rbVc2QnR0QW5CQzdkVm51?=
 =?utf-8?B?Y0JzSGRpd3lrMW1GYmhuR2d5Qk1XWDM0QU9jSDRYa1FjZ3pjMU5OWlJnS1Bu?=
 =?utf-8?B?ZjllUmtGRlN0R2ZSbHp4TkxXdWpzaFA2R0hMMHliUHYrMEVTU214VDQ0REJV?=
 =?utf-8?B?c1VtanllZzFHeVN2cmlQU09KcVdJdll6U2Z5eWNGbjlLM3oxd3dUQlg4TXZp?=
 =?utf-8?B?cmFzZFlaaU9hUm5ZVjdTQUxJN2ROSktwbXk3MG5xanpLVUhGd1FYU0pEaE1D?=
 =?utf-8?B?NlBRSmQ0Yk5EbDRBN09TZTJvcHJNeSt1aXJ4eWdhY1U5bUtPRGtSMjBKd3NE?=
 =?utf-8?B?ZnZnU2JqV3VHY0JDSklhelRydUZWTjhtODZnOWtGOUVBRzlxTDgrZ3ozZjRJ?=
 =?utf-8?B?QW4zS0thNW9lT0gzT1I5WkVabFg4elJ6KzNmTWN5ZldLcWxpRndiWVVjMkY2?=
 =?utf-8?B?VTFUSjRhRWpWNnBLV2ptRFg1b0lIbWtRbmN4Sjk4eHk5dnhmaS82NE5uWVFn?=
 =?utf-8?B?R2s1M21iZE9sejNMQ3R6YUVDbzhSS25UcENLN0JnblVEamUzdUZvL2dDeHhj?=
 =?utf-8?Q?MTnQ=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de6ddc43-be41-40e0-b920-08d99f6c01ed
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2021 08:20:49.9771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OwniUC0qDFfGAlk7ixSn1imwDWiQ536aj5K2UXD68svcWEsGf8GL9+nZgZgUyTNe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB0112
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/poll: Get a file reference for
 outstanding fence callbacks
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
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMDMuMTEuMjEgdW0gMTU6NTAgc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPiBPbiAyMDIxLTA3
LTIzIDEwOjIyLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+PiBBbSAyMy4wNy4yMSB1bSAxMDox
OSBzY2hyaWViIE1pY2hlbCBEw6RuemVyOgo+Pj4gT24gMjAyMS0wNy0yMyAxMDowNCBhLm0uLCBD
aHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+IEFtIDIzLjA3LjIxIHVtIDA5OjU4IHNjaHJpZWIg
TWljaGVsIETDpG56ZXI6Cj4+Pj4+IEZyb206IE1pY2hlbCBEw6RuemVyIDxtZGFlbnplckByZWRo
YXQuY29tPgo+Pj4+Pgo+Pj4+PiBUaGlzIG1ha2VzIHN1cmUgd2UgZG9uJ3QgaGl0IHRoZQo+Pj4+
Pgo+Pj4+PiAgwqDCoMKgwqDCoEJVR19PTihkbWFidWYtPmNiX2luLmFjdGl2ZSB8fCBkbWFidWYt
PmNiX291dC5hY3RpdmUpOwo+Pj4+Pgo+Pj4+PiBpbiBkbWFfYnVmX3JlbGVhc2UsIHdoaWNoIGNv
dWxkIGJlIHRyaWdnZXJlZCBieSB1c2VyIHNwYWNlIGNsb3NpbmcgdGhlCj4+Pj4+IGRtYS1idWYg
ZmlsZSBkZXNjcmlwdGlvbiB3aGlsZSB0aGVyZSBhcmUgb3V0c3RhbmRpbmcgZmVuY2UgY2FsbGJh
Y2tzCj4+Pj4+IGZyb20gZG1hX2J1Zl9wb2xsLgo+Pj4+IEkgd2FzIGFsc28gd29uZGVyaW5nIHRo
ZSBzYW1lIHRoaW5nIHdoaWxlIHdvcmtpbmcgb24gdGhpcywgYnV0IHRoZW4gdGhvdWdodCB0aGF0
IHRoZSBwb2xsIGludGVyZmFjZSB3b3VsZCB0YWtlIGNhcmUgb2YgdGhpcy4KPj4+IEkgd2FzIGFi
bGUgdG8gaGl0IHRoZSBCVUdfT04gd2l0aCBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0
aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRsYWIuZ25vbWUub3JnJTJGR05P
TUUlMkZtdXR0ZXIlMkYtJTJGbWVyZ2VfcmVxdWVzdHMlMkYxODgwJmFtcDtkYXRhPTA0JTdDMDEl
N0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzhkOTMwYWIzOTAxMTQ4MWE4MzljMDhkOTll
ZDk1NzU1JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzcx
NTQ3OTc4NzA1NjY4OCU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURB
aUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJmFt
cDtzZGF0YT1TanhTWklzV2tQN3J1MWlIeUwwSVk5aE45ODgyRU52N0N5Mzh2ek90cXljJTNEJmFt
cDtyZXNlcnZlZD0wIC4KPj4+Cj4+Pgo+Pj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgRMOkbnplciA8bWRhZW56ZXJAcmVkaGF0LmNvbT4K
Pj4+Pj4gLS0tCj4+Pj4+ICDCoMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxOCArKysr
KysrKysrKystLS0tLS0KPj4+Pj4gIMKgwqAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+Pj4+PiBpbmRleCA2YzUy
MGM5YmQ5M2MuLmVjMjU0OThhOTcxZiAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYwo+Pj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+Pj4+IEBA
IC02NSwxMiArNjUsOSBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRy
eSAqZGVudHJ5KQo+Pj4+PiAgwqDCoMKgwqDCoMKgIEJVR19PTihkbWFidWYtPnZtYXBwaW5nX2Nv
dW50ZXIpOwo+Pj4+PiAgwqDCoCDCoMKgwqDCoMKgIC8qCj4+Pj4+IC3CoMKgwqDCoCAqIEFueSBm
ZW5jZXMgdGhhdCBhIGRtYS1idWYgcG9sbCBjYW4gd2FpdCBvbiBzaG91bGQgYmUgc2lnbmFsZWQK
Pj4+Pj4gLcKgwqDCoMKgICogYmVmb3JlIHJlbGVhc2luZyBkbWEtYnVmLiBUaGlzIGlzIHRoZSBy
ZXNwb25zaWJpbGl0eSBvZiBlYWNoCj4+Pj4+IC3CoMKgwqDCoCAqIGRyaXZlciB0aGF0IHVzZXMg
dGhlIHJlc2VydmF0aW9uIG9iamVjdHMuCj4+Pj4+IC3CoMKgwqDCoCAqCj4+Pj4+IC3CoMKgwqDC
oCAqIElmIHlvdSBoaXQgdGhpcyBCVUcoKSBpdCBtZWFucyBzb21lb25lIGRyb3BwZWQgdGhlaXIg
cmVmIHRvIHRoZQo+Pj4+PiAtwqDCoMKgwqAgKiBkbWEtYnVmIHdoaWxlIHN0aWxsIGhhdmluZyBw
ZW5kaW5nIG9wZXJhdGlvbiB0byB0aGUgYnVmZmVyLgo+Pj4+PiArwqDCoMKgwqAgKiBJZiB5b3Ug
aGl0IHRoaXMgQlVHKCkgaXQgY291bGQgbWVhbjoKPj4+Pj4gK8KgwqDCoMKgICogKiBUaGVyZSdz
IGEgZmlsZSByZWZlcmVuY2UgaW1iYWxhbmNlIGluIGRtYV9idWZfcG9sbCAvIGRtYV9idWZfcG9s
bF9jYiBvciBzb21ld2hlcmUgZWxzZQo+Pj4+PiArwqDCoMKgwqAgKiAqIGRtYWJ1Zi0+Y2JfaW4v
b3V0LmFjdGl2ZSBhcmUgbm9uLTAgZGVzcGl0ZSBubyBwZW5kaW5nIGZlbmNlIGNhbGxiYWNrCj4+
Pj4+ICDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+PiAgwqDCoMKgwqDCoMKgIEJVR19PTihkbWFidWYt
PmNiX2luLmFjdGl2ZSB8fCBkbWFidWYtPmNiX291dC5hY3RpdmUpOwo+Pj4+PiAgwqDCoCBAQCAt
MTk2LDYgKzE5Myw3IEBAIHN0YXRpYyBsb2ZmX3QgZG1hX2J1Zl9sbHNlZWsoc3RydWN0IGZpbGUg
KmZpbGUsIGxvZmZfdCBvZmZzZXQsIGludCB3aGVuY2UpCj4+Pj4+ICDCoMKgIHN0YXRpYyB2b2lk
IGRtYV9idWZfcG9sbF9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IGRtYV9mZW5j
ZV9jYiAqY2IpCj4+Pj4+ICDCoMKgIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2J1
Zl9wb2xsX2NiX3QgKmRjYiA9IChzdHJ1Y3QgZG1hX2J1Zl9wb2xsX2NiX3QgKiljYjsKPj4+Pj4g
K8KgwqDCoCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmID0gY29udGFpbmVyX29mKGRjYi0+cG9sbCwg
c3RydWN0IGRtYV9idWYsIHBvbGwpOwo+Pj4+PiAgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcg
ZmxhZ3M7Cj4+Pj4+ICDCoMKgIMKgwqDCoMKgwqAgc3Bpbl9sb2NrX2lycXNhdmUoJmRjYi0+cG9s
bC0+bG9jaywgZmxhZ3MpOwo+Pj4+PiBAQCAtMjAzLDYgKzIwMSw4IEBAIHN0YXRpYyB2b2lkIGRt
YV9idWZfcG9sbF9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IGRtYV9mZW5jZV9j
YiAqY2IpCj4+Pj4+ICDCoMKgwqDCoMKgwqAgZGNiLT5hY3RpdmUgPSAwOwo+Pj4+PiAgwqDCoMKg
wqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRjYi0+cG9sbC0+bG9jaywgZmxhZ3MpOwo+
Pj4+PiAgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+Pj4+PiArwqDCoMKgIC8q
IFBhaXJlZCB3aXRoIGdldF9maWxlIGluIGRtYV9idWZfcG9sbCAqLwo+Pj4+PiArwqDCoMKgIGZw
dXQoZG1hYnVmLT5maWxlKTsKPj4+PiBJcyBjYWxsaW5nIGZwdXQoKSBpbiBpbnRlcnJ1cHQgY29u
dGV4dCBvaz8gSUlSQyB0aGF0IGNvdWxkIHBvdGVudGlhbGx5IHNsZWVwLgo+Pj4gTG9va3MgZmlu
ZSBBRkFJQ1Q6IEl0IGhhcwo+Pj4KPj4+ICDCoMKgwqDCoMKgwqDCoCBpZiAobGlrZWx5KCFpbl9p
bnRlcnJ1cHQoKSAmJiAhKHRhc2stPmZsYWdzICYgUEZfS1RIUkVBRCkpKSB7Cj4+Pgo+Pj4gYW5k
IGFzIGEgZmFsbGJhY2sgZm9yIHRoYXQsIGl0IGFkZHMgdGhlIGZpbGUgdG8gYSBsb2NrLWxlc3Mg
ZGVsYXllZF9mcHV0X2xpc3Qgd2hpY2ggaXMgcHJvY2Vzc2VkIGJ5IGEgd29ya3F1ZXVlLgo+PiBB
aCwgeWVzIHRoYXQgbWFrZXMgc2Vuc2UuCj4+Cj4+IEZlbGwgZnJlZSB0byBhZGQgUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBUaGFua3Mh
IEFGQUlDVCB0aGlzIGZpeCBjYW4gYmUgbWVyZ2VkIG5vdyBmb3IgNS4xNj8KCkkndmUganVzdCBw
dXNoZWQgaXQgdG8gZHJtLW1pc2MtbmV4dC1maXhlcyBzaW5jZSBpdCB3b24ndCBldmVuIGFwcGx5
IHRvIApkcm0tbWlzYy1maXhlcy4KCkNvdWxkIGJlIHRoYXQgd2UgZ2V0IHJlcXVlc3RzIHRvIGJh
Y2twb3J0IHRoaXMgYmVjYXVzZSBvZiB0aGUgQ0Mgc3RhYmxlLgoKQ2hyaXN0aWFuLgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

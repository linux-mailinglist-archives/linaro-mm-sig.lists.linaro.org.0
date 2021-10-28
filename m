Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FD043E019
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Oct 2021 13:36:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 716AF60488
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Oct 2021 11:36:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C76C860AF2; Thu, 28 Oct 2021 11:36:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E80C60343;
	Thu, 28 Oct 2021 11:36:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6BC3560268
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Oct 2021 11:36:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6697E6033F; Thu, 28 Oct 2021 11:36:38 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2082.outbound.protection.outlook.com [40.107.93.82])
 by lists.linaro.org (Postfix) with ESMTPS id 2B41660268
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Oct 2021 11:36:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlM1aGxNnCjThUgyMO87rFGmxbJIhp+JxhFgguPYnkjkEzBBl9a/ndK+7KqWTZ3nCfBaBYbg4EABfV1jeoIP2jFjGeJ3ELj3IaOxyYE0br8VjotIYb0JPAZNvY03jpYW7QZl04wCCArcmzUpJu/8+aDdD3WqIklnvnMgFLkT6CBmW0sM/rcTh8j4Pb3HcLPDg67NqBsTSwyPg3ZmqCdTS9ljMRUFGFlGABVlopvBN8uK0LxNxzKLB2PEz0RGLRaoMeW8UYWZY+RS/fWydGwxYBww1oWtLxVtTC5YItU2JVXOaFchnJtJQH0tp9sCSn8Z75EUffYCnIfT27pd+VTbAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGfEfY3l7XoIzMKcpwCj60wmJJGCk/4S7EoSb4NMz80=;
 b=T3BZmVnFj+aTnxacSUfBx1L3ffJqWt50tajygHboAeGN0U4irWK/1SsJBRqgHe6dl2B1ItbLRib/TG5UiAzSs9hyfHKYES/QeVb7tzyF2222ocpLqCNw9n76K6de1xyts4eW2ya5YjbHTQFCBQI9OreX+SUpte233sBVhIOnkeWETyATlPQYGE8JuNa0sWek9gaQD5Vuxal0DXoudE2OG3y0zSryqJXJyR9goSF5YjBoeePkqF7YQaK0BMPwtEo2aq6Zp2F2B2d8GmQt9U3JDQRug1+XOrGBCvXqFLsXC1JUJiOwSwL/8aMPOvQ+u3SD7zr6yxYTrbsjUFBh2Qwf1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hGfEfY3l7XoIzMKcpwCj60wmJJGCk/4S7EoSb4NMz80=;
 b=NU5X1fkopkjqPbm1tX0AsVp01iExf3K45/b/Gn4S8fhffx+QzzlCKGzw4v1dN02mVH9Xz2zCWDGY7jxddRDTqU4F1adyx3vBN61+0ghx552yyJp1QUOFvE1RKVlmdX4RplEWv9IOUacWunDp0EWxK4/f3SDiJdR5vzjU6n64VG8=
Authentication-Results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MW3PR12MB4476.namprd12.prod.outlook.com
 (2603:10b6:303:2d::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Thu, 28 Oct
 2021 11:35:30 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::55c7:6fc9:b2b1:1e6a]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::55c7:6fc9:b2b1:1e6a%10]) with mapi id 15.20.4628.020; Thu, 28 Oct
 2021 11:35:30 +0000
To: guangming.cao@mediatek.com
References: <0e062f12-7e79-5a05-1e7b-10dda8e353b7@amd.com>
 <20211026115248.9564-1-guangming.cao@mediatek.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <1d681a88-5c3e-f2b1-2865-c380599a4f71@amd.com>
Date: Thu, 28 Oct 2021 13:35:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20211026115248.9564-1-guangming.cao@mediatek.com>
Content-Language: en-US
X-ClientProxiedBy: AM4PR0701CA0038.eurprd07.prod.outlook.com
 (2603:10a6:200:42::48) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
Received: from [192.168.178.21] (91.14.161.181) by
 AM4PR0701CA0038.eurprd07.prod.outlook.com (2603:10a6:200:42::48) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.4 via Frontend
 Transport; Thu, 28 Oct 2021 11:35:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bd37a8a-834f-4621-5a27-08d99a070b50
X-MS-TrafficTypeDiagnostic: MW3PR12MB4476:
X-Microsoft-Antispam-PRVS: <MW3PR12MB4476DB038EC8789D4735BFF983869@MW3PR12MB4476.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cUfzIa9UVYKYejles+AoaZ3ogrzczXDJkZJrdPt0fml8dqJrYnrMFvf2Gt/9oBmZwIsxbcTF/M1D2RBOW5JPl4zuVFPUimrjYZ+aBHWKUdC8kSkWAgpUum9wiPP1eyFaQyj8SgEDSkIgvGSqx0fD/rCUlYoLxeEVzo7671n5DPCjJKnL+WSSp8rzvYIFWT6/oDJgkjWjjzPaXALBugAPcNknPzsO6vHkgy1ocQM/gnm085PJNUvcGxyCGwY1WAei3Mu4aLUszt4cqnh4pjh+KbigzLD708KaWCbvSSdxLxn8n2ZIeNzTk389x9bki7Zz/uuPMvTVvVdr/Ej+k/HU732amaVvB2q5Oij8KyijzHuKDa7S40XYPTheVuQJZkOZMRn0QT6Znn3LLmvOk9jpkmfhjw9+trnzojnk7QG89MUpM1pHTg63BsZZCfRq/wwie7/L8Gxx0/3bxjumL5OmfPFCzjoxnpxr72zyu6s64ttblcFm+uM0P9sI8qrlZinIgMUmdL9TSnicgINQefImOhojPCx0N+f6EDwO4h32ELM2EJ+yt19VsbHAdkdFqA4OltCwEASw1G5bMiAlRT8f/8rRyVQHUS3jayKCAqSo7zXHNnDaTg1BBA+NB8siZBQc3JNhvluOAiiiixx70W1rCQvaiwqRR5UkQbrhfh39758p13jEh3t6vGG0zIAsP1RtTQUdQL+8lq6y1Aui6Qc5Vtj8eVkSCGBFnd/Y5lEQ0cI+iJ6n91sv6c0f2OF0hthb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8936002)(31696002)(4326008)(6486002)(2616005)(6666004)(508600001)(316002)(86362001)(2906002)(7416002)(5660300002)(16576012)(66556008)(6916009)(83380400001)(8676002)(66946007)(36756003)(66574015)(66476007)(4001150100001)(186003)(26005)(956004)(38100700002)(31686004)(45080400002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlVTWmxqUU1oM1dtZ3E0UFNHL0UwSjRtcnlzS01xb2tsZGE5V0h1bGMzaHVL?=
 =?utf-8?B?L0h5eDdUWVpqYVZ4ZmdDOXdkQkVublFzbEVSdjNqQm9LdWgyZTNhSVg4VVhL?=
 =?utf-8?B?elVlQ2RFQnNQTTArNnJMT2dXRjV1Y0hyTHRlZDFDdGdMeU1DTU5XS3h4NnBq?=
 =?utf-8?B?SlkwU0lnK2VoY204MURDQTgzY2tEL0RVU1JRZXE0aGptNCswcFlDRC8vNHBU?=
 =?utf-8?B?bTRmY2JwakJCY2MybDJDKzFtSzcyZHQxTGU1T0F5SGdlcEx6TndsRG1wd2F0?=
 =?utf-8?B?TjFtT3Z4WjJXMFY3YTNMTlRNTkF1ZG9SRHgxZzdzd05DNkVIcURhWlVYbzNi?=
 =?utf-8?B?cXBLcE8vemVCM1ZNbDBUd1RxcVpBL2o5a1JneWg2QWw4NnRBRStEQkNsd1Ja?=
 =?utf-8?B?T01abERXbkFNSHVFNzl6WGZQV2h2bUdFK3hWeENSKzZKQ0NBSyt4UDBoUUdU?=
 =?utf-8?B?WDlaaXg4cEFEWDc2cmxpb2FiMHF0N2RnMkVoK2pMUzhzdWh0MHhaMVRqYXRl?=
 =?utf-8?B?akY3ZGNnZzBjWFpLOHppTEVobWdNeTVKaUNKVUt3c0U1cGJpaDdBUFlLWkgw?=
 =?utf-8?B?WEg0elI5TmFwZG4xL0k3dGRsa1dIY2hwSHBpUDdyYzdYU1cxVU8vOC93RC9w?=
 =?utf-8?B?VEJjR1VLUHcrYjUzaHREcVM4aThqSkhHY3ZxUkpaR1hudXREa0tYQ2loeFUx?=
 =?utf-8?B?WTJjUGdqUlV3bnFweTExYjdBWFlkUmZqbWdQSmRxNm1LVUEzaStoZ3dCeWJI?=
 =?utf-8?B?YVBUYnJMUVhyYUFGRjl5TTM1V3VVZVFyVjA1WmtJTWpweVN1OW16QjVCbzZW?=
 =?utf-8?B?Z3pEYlg4SjczUU95WW5MWHZobjQzeTBTckpMditZTEsrTTVhRUVJU2l6UWtj?=
 =?utf-8?B?US9ZM29XbnEwRThLMXFwTnU2UjhncEpZRmgybndWazZpTlN5cUNyTWQxWjd3?=
 =?utf-8?B?bGNsYjV2aitKZ3Q0d1g0NlBBQURNUDhBSkRCZy95Z1JZVFF5OHhzU3BETFlr?=
 =?utf-8?B?c2FIMy84dStCUEErbFREems5VGQzcW9HeGlFQjVMa3VSdDNiOFFhWURMdDN1?=
 =?utf-8?B?TUJOK0V3TmZLaG91bXM2SmpLck9jTU5sa0h2aWNJMlQwUWp4eE1rTGJNS3BY?=
 =?utf-8?B?T3NkZElabzZXa2dyMWkyTVhURjBXTHpFMnUvOGNDblpiNWhrUlY0aUs0SnFh?=
 =?utf-8?B?S0VWVURZYWV6ZWFtTVprdTZYdDJTVCtoNUNGeHFPRWk4TVA2STlZNFVsVkxB?=
 =?utf-8?B?bE16Y2grL29WSDNjSmNVYVIvblpKMEFkRWVHOStBVjJrYWJBbHNCSU52STFw?=
 =?utf-8?B?RG02bTJMNlpFNVhOOGFSMFZ3S0xtN2JYWVZLcnJSWk54U3huTlFWRTVrT040?=
 =?utf-8?B?YVRlSTRHSHJoSEJuWEI3NFdka0ZuTng0akFEcDlyd1NheERrd09KV1pJMlZ5?=
 =?utf-8?B?aDAwSGZXWXo3TzJiQkRYY0t5M1lRTmEvMnl0VVJsSmlSbzJUOGprS253ak5o?=
 =?utf-8?B?QUovSXlQQ3ptckQ2WFV0cStvbm5WOGxFdXBUUG4rMWtsWWhWZEVMMXd1dS9E?=
 =?utf-8?B?dFlpZzVWV0l5b2VmQXVJeTl4Zk5HUEQ4Y0FZdHYrOUNoVW0zUk9WaUc5SHpz?=
 =?utf-8?B?YkxaeDgrcmFWRXNxTUc0bW5EdmNQUW9BSWNmblRqRkwvYUJuNnZaTjl0WHFC?=
 =?utf-8?B?Ykw3SE1CeDM5WlZIbzhWbGlFVk1XaW9tQkV5UVE0T0FtTmJtMnFYL0o2UDRw?=
 =?utf-8?B?ZkEzdWtGV2JlQkx1Rk84YlBEcVNmL2dHdVB3QjNEQmphWlp0bkFDVGtKcENr?=
 =?utf-8?B?U1lQdS9EcGJwdlA3SUVnbk1tNmJmQWJsVzdkbG1jZzR6azF4N1BpaDFlRHF6?=
 =?utf-8?B?aHFYRHp3b1REVlFueldVcDBkbm1WeHIzSWI4MUUvYWtRclJJQVFCSG54N0pL?=
 =?utf-8?B?ZFNGNk95T3B3VTZpU1pNWWVlcVpySHIrb1BIS0paU2FmUjE4dEZkcm5YTFRs?=
 =?utf-8?B?cGRaSU15TTB0TXNvNnlPV2JXVFlBTjNweFJMWFVXQjJYaElDeitrV3U4bE1s?=
 =?utf-8?B?bEx3RWkwYWZIQm1yMmdOby93MkV3MFNmb1RRa2lRM1IzOXBzUDBaVXFGb0dp?=
 =?utf-8?Q?SbKE=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bd37a8a-834f-4621-5a27-08d99a070b50
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2021 11:35:29.8498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jLAwBj65H0Ulsg4e1wRKS3MI8p7zL1KU/NgVoXVH014q5rPkBVvQZ2IAEXV+eRoZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4476
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3] dma-buf: remove restriction of
 IOCTL:DMA_BUF_SET_NAME
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
Cc: wsd_upstream@mediatek.com, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjYuMTAuMjEgdW0gMTM6NTIgc2NocmllYiBndWFuZ21pbmcuY2FvQG1lZGlhdGVrLmNvbToK
PiBGcm9tOiBHdWFuZ21pbmcgQ2FvIDxHdWFuZ21pbmcuQ2FvQG1lZGlhdGVrLmNvbT4KPgo+IE9u
IFR1ZSwgMjAyMS0xMC0yNiBhdCAxMzoxOCArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToK
Pj4gQW0gMTQuMTAuMjEgdW0gMTI6MjUgc2NocmllYiBndWFuZ21pbmcuY2FvQG1lZGlhdGVrLmNv
bToKPj4+IEZyb206IEd1YW5nbWluZyBDYW8gPEd1YW5nbWluZy5DYW9AbWVkaWF0ZWsuY29tPgo+
Pj4KPj4+IEluIHRoaXMgcGF0Y2goaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZyUy
RnBhdGNoJTJGMzEwMzQ5JmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1k
LmNvbSU3QzY2NTJmNDIzYjk2NTQ3YjgzMjEzMDhkOTk4NzcyMTIxJTdDM2RkODk2MWZlNDg4NGU2
MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzcwODQ1OTcyNzIzNjk3NyU3Q1Vua25vd24l
N0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJ
NklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT00RUZnNjBzQ3hRek51TUtC
MFZqaGJwdm9lR2xjQWJvZkVyTXRjalB0SWZ3JTNEJmFtcDtyZXNlcnZlZD0wKSwKPj4+IGl0IGFk
ZCBhIG5ldyBJT0NUTCB0byBzdXBwb3J0IGRtYS1idWYgdXNlciB0byBzZXQgZGVidWcgbmFtZS4K
Pj4+Cj4+PiBCdXQgaXQgYWxzbyBhZGRlZCBhIGxpbWl0YXRpb24gb2YgdGhpcyBJT0NUTCwgaXQg
bmVlZHMgdGhlCj4+PiBhdHRhY2htZW50cyBvZiBkbWFidWYgc2hvdWxkIGJlIGVtcHR5LCBvdGhl
cndpc2UgaXQgd2lsbCBmYWlsLgo+Pj4KPj4+IEZvciB0aGUgb3JpZ2luYWwgc2VyaWVzLCB0aGUg
aWRlYSB3YXMgdGhhdCBhbGxvd2luZyBuYW1lIGNoYW5nZQo+Pj4gbWlkLXVzZSBjb3VsZCBjb25m
dXNlIHRoZSB1c2VycyBhYm91dCB0aGUgZG1hLWJ1Zi4KPj4+IEhvd2V2ZXIsIHRoZSByZXN0IG9m
IHRoZSBzZXJpZXMgYWxzbyBtYWtlcyBzdXJlIGVhY2ggZG1hLWJ1ZiBoYXZlIGEKPj4+IHVuaXF1
ZQo+Pj4gaW5vZGUoaHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZyUyRnBhdGNoJTJG
MzEwMzg3JTJGJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3
QzY2NTJmNDIzYjk2NTQ3YjgzMjEzMDhkOTk4NzcyMTIxJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFh
ODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzcwODQ1OTcyNzIzNjk3NyU3Q1Vua25vd24lN0NUV0Zw
Ykdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhh
V3dpTENKWFZDSTZNbjAlM0QlN0MxMDAwJmFtcDtzZGF0YT1jJTJCYnNvJTJCU3hpUGp3bHYlMkI5
dEF6QTR4MGdmNVVrdFJFaFNpQXNPREZraWhrJTNEJmFtcDtyZXNlcnZlZD0wKSwgYW5kIGFueQo+
Pj4gYWNjb3VudGluZwo+Pj4gc2hvdWxkIHByb2JhYmx5IHVzZSB0aGF0LCB3aXRob3V0IHJlbHlp
bmcgb24gdGhlIG5hbWUgYXMgbXVjaC4KPj4+Cj4+PiBTbywgcmVtb3ZpbmcgdGhpcyByZXN0cmlj
dGlvbiB3aWxsIGxldCBkbWEtYnVmIHVzZXJzcGFjZSB1c2VycyB0bwo+Pj4gdXNlIGl0Cj4+PiBt
b3JlIGNvbWZvcnRhYmx5IGFuZCB3aXRob3V0IGFueSBzaWRlIGVmZmVjdC4KPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBHdWFuZ21pbmcgQ2FvIDxHdWFuZ21pbmcuQ2FvQG1lZGlhdGVrLmNvbT4KPj4g
V2UgY291bGQgbm93IGNsZWFudXAgdGhlIHJldHVybiB2YWx1ZSBmcm9tIGRtYV9idWZfc2V0X25h
bWUoKSBpbnRvIGEKPj4gdm9pZCBzaW5jZSB0aGF0IGZ1bmN0aW9uIGNhbid0IGZhaWwgYW55IG1v
cmUgYXMgZmFyIGFzIEkgY2FuIHNlZS4KPj4KPj4gQnV0IHRoYXQgaXNuJ3QgbWFuZGF0b3J5IEkg
dGhpbmssIHBhdGNoIGlzIFJldmlld2VkLWJ5OiBDaHJpc3RpYW4KPj4gS8O2bmlnCj4+IDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+Cj4gU28sIGhlcmUgaXMgbm8gbmVlZCB0byBjaGVjayBy
ZXR1cm4gdmFsdWUgb2YgJ3N0cm5kdXBfdXNlcicsCj4ganVzdCByZXR1cm4gd2l0aG91dCBlcnJv
ciBjb2RlIGlmIHRoZSBhbG1vc3QgaW1wb3NzaWJsZSBlcnJvciBvY2N1cnM/CgpHb29kIHBvaW50
LCB0b3RhbGx5IG1pc3NlZCB0aGF0IG9uZS4KCkluIHRoYXQgY2FzZSBJJ20gZ29pbmcgdG8gcHVz
aCB0aGUgcGF0Y2ggdG8gZHJtLW1pc2MtbmV4dCBhcyBpcy4KClJlZ2FyZHMsCkNocmlzdGlhbi4K
Cj4KPiBHdWFuZ21pbmcuCj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4gLS0tCj4+
PiAgICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTcgKysrLS0tLS0tLS0tLS0tLS0KPj4+
ICAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYwo+Pj4gaW5kZXggNTExZmUwZDIxN2EwLi41ZmJiM2EyMDY4YTMgMTAwNjQ0
Cj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+PiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jCj4+PiBAQCAtMzI1LDEwICszMjUsOCBAQCBzdGF0aWMgX19wb2xsX3Qg
ZG1hX2J1Zl9wb2xsKHN0cnVjdCBmaWxlCj4+PiAqZmlsZSwgcG9sbF90YWJsZSAqcG9sbCkKPj4+
ICAgIAo+Pj4gICAgLyoqCj4+PiAgICAgKiBkbWFfYnVmX3NldF9uYW1lIC0gU2V0IGEgbmFtZSB0
byBhIHNwZWNpZmljIGRtYV9idWYgdG8gdHJhY2sKPj4+IHRoZSB1c2FnZS4KPj4+IC0gKiBUaGUg
bmFtZSBvZiB0aGUgZG1hLWJ1ZiBidWZmZXIgY2FuIG9ubHkgYmUgc2V0IHdoZW4gdGhlIGRtYS1i
dWYKPj4+IGlzIG5vdAo+Pj4gLSAqIGF0dGFjaGVkIHRvIGFueSBkZXZpY2VzLiBJdCBjb3VsZCB0
aGVvcml0aWNhbGx5IHN1cHBvcnQKPj4+IGNoYW5naW5nIHRoZQo+Pj4gLSAqIG5hbWUgb2YgdGhl
IGRtYS1idWYgaWYgdGhlIHNhbWUgcGllY2Ugb2YgbWVtb3J5IGlzIHVzZWQgZm9yCj4+PiBtdWx0
aXBsZQo+Pj4gLSAqIHB1cnBvc2UgYmV0d2VlbiBkaWZmZXJlbnQgZGV2aWNlcy4KPj4+ICsgKiBJ
dCBjb3VsZCBzdXBwb3J0IGNoYW5naW5nIHRoZSBuYW1lIG9mIHRoZSBkbWEtYnVmIGlmIHRoZSBz
YW1lCj4+PiArICogcGllY2Ugb2YgbWVtb3J5IGlzIHVzZWQgZm9yIG11bHRpcGxlIHB1cnBvc2Ug
YmV0d2VlbiBkaWZmZXJlbnQKPj4+IGRldmljZXMuCj4+PiAgICAgKgo+Pj4gICAgICogQGRtYWJ1
ZjogW2luXSAgICAgZG1hYnVmIGJ1ZmZlciB0aGF0IHdpbGwgYmUgcmVuYW1lZC4KPj4+ICAgICAq
IEBidWY6ICAgIFtpbl0gICAgIEEgcGllY2Ugb2YgdXNlcnNwYWNlIG1lbW9yeSB0aGF0IGNvbnRh
aW5zCj4+PiB0aGUgbmFtZSBvZgo+Pj4gQEAgLTM0MSwyNSArMzM5LDE2IEBAIHN0YXRpYyBfX3Bv
bGxfdCBkbWFfYnVmX3BvbGwoc3RydWN0IGZpbGUKPj4+ICpmaWxlLCBwb2xsX3RhYmxlICpwb2xs
KQo+Pj4gICAgc3RhdGljIGxvbmcgZG1hX2J1Zl9zZXRfbmFtZShzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLCBjb25zdCBjaGFyCj4+PiBfX3VzZXIgKmJ1ZikKPj4+ICAgIHsKPj4+ICAgIAljaGFyICpu
YW1lID0gc3RybmR1cF91c2VyKGJ1ZiwgRE1BX0JVRl9OQU1FX0xFTik7Cj4+PiAtCWxvbmcgcmV0
ID0gMDsKPj4+ICAgIAo+Pj4gICAgCWlmIChJU19FUlIobmFtZSkpCj4+PiAgICAJCXJldHVybiBQ
VFJfRVJSKG5hbWUpOwo+Pj4gICAgCj4+PiAtCWRtYV9yZXN2X2xvY2soZG1hYnVmLT5yZXN2LCBO
VUxMKTsKPj4+IC0JaWYgKCFsaXN0X2VtcHR5KCZkbWFidWYtPmF0dGFjaG1lbnRzKSkgewo+Pj4g
LQkJcmV0ID0gLUVCVVNZOwo+Pj4gLQkJa2ZyZWUobmFtZSk7Cj4+PiAtCQlnb3RvIG91dF91bmxv
Y2s7Cj4+PiAtCX0KPj4+ICAgIAlzcGluX2xvY2soJmRtYWJ1Zi0+bmFtZV9sb2NrKTsKPj4+ICAg
IAlrZnJlZShkbWFidWYtPm5hbWUpOwo+Pj4gICAgCWRtYWJ1Zi0+bmFtZSA9IG5hbWU7Cj4+PiAg
ICAJc3Bpbl91bmxvY2soJmRtYWJ1Zi0+bmFtZV9sb2NrKTsKPj4+ICAgIAo+Pj4gLW91dF91bmxv
Y2s6Cj4+PiAtCWRtYV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOwo+Pj4gLQlyZXR1cm4gcmV0
Owo+Pj4gKwlyZXR1cm4gMDsKPj4+ICAgIH0KPj4+ICAgIAo+Pj4gICAgc3RhdGljIGxvbmcgZG1h
X2J1Zl9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwKPj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D11D1F9257
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jun 2020 10:56:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D40EC61885
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Jun 2020 08:56:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C68EB6653E; Mon, 15 Jun 2020 08:56:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 200A96192C;
	Mon, 15 Jun 2020 08:55:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2D55A61885
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jun 2020 08:55:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1E8106192C; Mon, 15 Jun 2020 08:55:37 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2040.outbound.protection.outlook.com [40.107.223.40])
 by lists.linaro.org (Postfix) with ESMTPS id 8E04F61885
 for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Jun 2020 08:55:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0teWHyDYueGlf0t0mFdTjuzHoGJ81lJo8ham9LGEd4lrhG/WhsIWl/BNokeTkqS+HdEvoiDTkCfUYlhu4js14E0AjN/flKXcGZ93vGI2YQ+/EqWNZq2HX58xcG+dDM/VgpPCDFv5IIo1ILUrsIle3hWjeaTvlAyz5EAJFKKCv5j76fAg6dljALG2HCifapT1Y0rjE8bE+2Y7HE7Styabvj/b338GKPM0UuI7cyIDAjBhOtddfk8KAUZleWOd+t9qzEIHrGM0Tdi44nm2i3XUzxZ7noXR2J4LAGkyxy0fRrxVyaj6sBiAVOB2a+hzAFj0N52Sgn0ThuWmGeT/nBQ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=caso4/0QK0RPuLPY5+h88j14LzivqNpQK+t8n+09m0M=;
 b=hSVyUyCzJazkYwWOGfNtcZl4lYGsqUUPmcp310vJhDNFlqd9zFwbkpDn8NA/WWEOAOifUtjY8Hbp0g/15noDVwXhIAZHPQrVCcIgiEk69siSsTu/ebYgLMQOH8/9x4nFlznW0qw8JG73IjUlyN3ky2agZ2kkhbYq1r6bzHT1WW/UvfkywVCd/VKQtScPVAW5oOcGQ19n0xH5oOXb+LMNFkhWuPj6EXP+nyldDOxVBWdzKluNHYzcW2A6Dk3t1QaPag767wTgaeG1VFk9lZwKdEZBC8QPZiLiMpEAXDcpIWHfkFx0EZhp/ymC6U5B8ivUDKzKj+x79gzvkRahkefq6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB4401.namprd12.prod.outlook.com (2603:10b6:5:2a9::15)
 by DM6PR12MB3785.namprd12.prod.outlook.com (2603:10b6:5:1cd::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Mon, 15 Jun
 2020 08:55:33 +0000
Received: from DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766]) by DM6PR12MB4401.namprd12.prod.outlook.com
 ([fe80::7949:b580:a2d5:f766%3]) with mapi id 15.20.3088.029; Mon, 15 Jun 2020
 08:55:33 +0000
To: Xiyu Yang <xiyuyang19@fudan.edu.cn>, Huang Rui <ray.huang@amd.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
References: <1592051425-94019-1-git-send-email-xiyuyang19@fudan.edu.cn>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <a494dbe2-7f6e-20d2-cd3c-1ef247349053@amd.com>
Date: Mon, 15 Jun 2020 10:55:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
In-Reply-To: <1592051425-94019-1-git-send-email-xiyuyang19@fudan.edu.cn>
Content-Language: en-US
X-ClientProxiedBy: AM4PR0701CA0013.eurprd07.prod.outlook.com
 (2603:10a6:200:42::23) To DM6PR12MB4401.namprd12.prod.outlook.com
 (2603:10b6:5:2a9::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM4PR0701CA0013.eurprd07.prod.outlook.com (2603:10a6:200:42::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.10 via Frontend
 Transport; Mon, 15 Jun 2020 08:55:30 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 324310e7-c417-4957-6984-08d81109dcc7
X-MS-TrafficTypeDiagnostic: DM6PR12MB3785:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB3785E9B358D312B2486F47F6839C0@DM6PR12MB3785.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: einueZtfa2o2jawHASqsHuWa2SPlE8Q5HYxJ3e0BtS0E6gkP4Yy/R4V0d9jFVXSzrqARCDb7W0zeTXzj9OKOCx/dLZ88mehukY7KMgM0NmxeoHSLSSoT0oZzupaP+A0i6yFyw6Ai8H3bE/6lR5W/HhARvX/hRtswd8lmHsIQZO2Ty+nMgrkTqIkTdBOOOP5ViYGaqBR7X6G3TB6yh2bvsly1yRstZD+tCXe9DwQo6etd2HzsSmPBnHTcabLPntHg4xv6onkPVVEEZCtFqcoHsR6mKL68lI2Mt7jkoVmSd97TF+Q8+w730CyquceL4iwlFZX0CoA/IreJZA08xL5u4MuSDHPZWYLRc66q7fv06Cin/0dafoOUvBCPXwLmfykJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR12MB4401.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(346002)(136003)(396003)(376002)(8676002)(83380400001)(7416002)(5660300002)(6666004)(110136005)(478600001)(8936002)(4326008)(186003)(16526019)(2906002)(316002)(36756003)(66946007)(66476007)(66556008)(86362001)(31686004)(52116002)(31696002)(2616005)(6486002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Kuk2JihSJPFEuigJ9nEnVm/GXtuSxJLzxLiY/Cl3fMYiwb8Dy8ZgfT1sAd43V9cF1r0ld5X3rDv9j2tyjm3t2kELn7lx2iAM75ScsSMNy3wSsbdF0vYseA1hxJhOc9kSniqq4y4XD4ECVguMWBURJWyq1jJNIRdTYp6BQm7pwmcGsLO9fCnmJ1PhAQ9O66t8nAgLxm5m79EKW+ejaF8AG916JFgF08ImdD+YLjyn6a/DElrsCkWlbaFObjCGwW0fsUcZpwYWv3B42oXGIowny6iI4pfCRHvul+fIOSTXfFnDdnIAB8qEwoGnkqTjF2yT9GHaj5SilEk2rJpxocRY8Lr6dfC83J00iHGVuMFxgousq6XWXWum/063t58QjPypKKWAywSOQq8kIa2TEnsJww/6NRqL846Xh4mhwXAVTk7JiHEy4JWi3eMTa83zMdSuNxaO9ZqDOLhzk7kJjdmxRYgEON4TJ8v5QQvF3qabbjHIteNjEIYQNIdUV4Fmu7O1D/FAP7R5X60yHUTNR6DDlxgx1EPdAjGpKWvrlSCTSoGuMuaPbIxbuuWIq0oOmEi/
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 324310e7-c417-4957-6984-08d81109dcc7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 08:55:33.1828 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bC/pRgeG32uym8YMMNDiDyexG8BJy5UTETC8bZXuIgTcYekST6FGxqH4uYcGDqq1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3785
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Xin Tan <tanxin.ctf@gmail.com>, yuanxzhang@fudan.edu.cn, kjlu@umn.edu
Subject: Re: [Linaro-mm-sig] [PATCH] drm/ttm: Fix dma_fence refcnt leak when
	adding move fence
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMDYuMjAgdW0gMTQ6MzAgc2NocmllYiBYaXl1IFlhbmc6Cj4gdHRtX2JvX2FkZF9tb3Zl
X2ZlbmNlKCkgaW52b2tlcyBkbWFfZmVuY2VfZ2V0KCksIHdoaWNoIHJldHVybnMgYQo+IHJlZmVy
ZW5jZSBvZiB0aGUgc3BlY2lmaWVkIGRtYV9mZW5jZSBvYmplY3QgdG8gImZlbmNlIiB3aXRoIGlu
Y3JlYXNlZAo+IHJlZmNudC4KPgo+IFdoZW4gdHRtX2JvX2FkZF9tb3ZlX2ZlbmNlKCkgcmV0dXJu
cywgbG9jYWwgdmFyaWFibGUgImZlbmNlIiBiZWNvbWVzCj4gaW52YWxpZCwgc28gdGhlIHJlZmNv
dW50IHNob3VsZCBiZSBkZWNyZWFzZWQgdG8ga2VlcCByZWZjb3VudCBiYWxhbmNlZC4KPgo+IFRo
ZSByZWZlcmVuY2UgY291bnRpbmcgaXNzdWUgaGFwcGVucyBpbiBvbmUgZXhjZXB0aW9uIGhhbmRs
aW5nIHBhdGggb2YKPiB0dG1fYm9fYWRkX21vdmVfZmVuY2UoKS4gV2hlbiBub193YWl0X2dwdSBm
bGFnIGlzIGVxdWFscyB0byB0cnVlLCB0aGUKPiBmdW5jdGlvbiBmb3JnZXRzIHRvIGRlY3JlYXNl
IHRoZSByZWZjbnQgaW5jcmVhc2VkIGJ5IGRtYV9mZW5jZV9nZXQoKSwKPiBjYXVzaW5nIGEgcmVm
Y250IGxlYWsuCj4KPiBGaXggdGhpcyBpc3N1ZSBieSBjYWxsaW5nIGRtYV9mZW5jZV9wdXQoKSB3
aGVuIG5vX3dhaXRfZ3B1IGZsYWcgaXMKPiBlcXVhbHMgdG8gdHJ1ZS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IFhpeXUgWWFuZyA8eGl5dXlhbmcxOUBmdWRhbi5lZHUuY24+Cj4gU2lnbmVkLW9mZi1ieTog
WGluIFRhbiA8dGFueGluLmN0ZkBnbWFpbC5jb20+CgpSZXZpZXdlZCBhbmQgcHVzaGVkIHRoaXMg
b25lIGFzIHdlbGwgYXMgdGhlIG90aGVyIHR0bSBmaXggdG8gZHJtLW1pc2MtZml4ZXMuCgpUaGF0
IHNob3VsZCBzaG93IHVwIGluIExpbnVzIHRyZWUgcmF0aGVyIHNvb24uCgpUaGFua3MgZm9yIHRo
ZSBoZWxwLApDaHJpc3RpYW4uCgpQUzogQXJlIHlvdSB3b3JraW5nIG9uIHNvbWUgbmV3IGF1dG9t
YXRlZCBzY3JpcHRzIHRvIGNhdGNoIHRoYXQgc3R1ZmYgb3IgCmhvdyBkaWQgeW91IHN0dW1ibGVk
IG92ZXIgaXQ/Cgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYyB8IDQgKysr
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iby5jCj4gaW5kZXggZjczYjgxYzI1NzZlLi4wZjIwZTE0YTRjZmQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvLmMKPiBAQCAtODgzLDggKzg4MywxMCBAQCBzdGF0aWMgaW50IHR0bV9i
b19hZGRfbW92ZV9mZW5jZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+ICAgCWlmICgh
ZmVuY2UpCj4gICAJCXJldHVybiAwOwo+ICAgCj4gLQlpZiAobm9fd2FpdF9ncHUpCj4gKwlpZiAo
bm9fd2FpdF9ncHUpIHsKPiArCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiAgIAkJcmV0dXJuIC1F
QlVTWTsKPiArCX0KPiAgIAo+ICAgCWRtYV9yZXN2X2FkZF9zaGFyZWRfZmVuY2UoYm8tPmJhc2Uu
cmVzdiwgZmVuY2UpOwo+ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=

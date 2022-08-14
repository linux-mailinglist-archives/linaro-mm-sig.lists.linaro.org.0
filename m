Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BAD5925C0
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 14 Aug 2022 19:14:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1EFE23EC48
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 14 Aug 2022 17:14:39 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by lists.linaro.org (Postfix) with ESMTPS id 4C2333EC48
	for <linaro-mm-sig@lists.linaro.org>; Sun, 14 Aug 2022 17:14:35 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id e13so7023146edj.12
        for <linaro-mm-sig@lists.linaro.org>; Sun, 14 Aug 2022 10:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=lcXhUSdXTZBEx8SZoP2wndcVuxf5BwHzU6Gjyckptts=;
        b=csWx3BhYGeVOyeUipPUq7Umiysxpgwd1x1SSSCUVIBiXp7sRSBvlv1PQmaRUK/pp1Q
         uziYUvtY4HkYzwGDIiwY/Thmr1T9BZ8kkxZ5zDDsD3pRr7BhbzvDebxpkyhCv3aNdaxP
         dk271AYRtadbRBBh+T780jeCgO9gW7sBllq3ixbctSKmvoEgGD9xhN9k16MXepM38VZa
         aAPE8ysiNZD4g8KS/BkziR4hu58afy4seLzQcx2OEYuEsP/Nh9zbmZl06eH9qJO673xM
         gqdRh+1FVeg0J+05bowFsiEB7khTokFp9WWLTs+SrMG4/ZPaoOATXSiIID5zoMZOSJ/0
         ukug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=lcXhUSdXTZBEx8SZoP2wndcVuxf5BwHzU6Gjyckptts=;
        b=OzSVQo9c+TbjIMxdnnJPcrJE3ZKLHlhK+vzHvm94sAxCO2G6ghW7TAdcqeuf5HWAED
         TP6e+iNLjJzR8w7H3ZFuK6pFUVsclHt6mg+ssN6OfjiGFI8scbVfZqD/9Sg393h3Olg5
         IQY6dr78h8A5zbzT9r3ZUqGwUCDsO8bRlqXM3IaE87AgtBcKAYpNVR+lsVr+QAnR0w9f
         /WgiDb+UBTl8+QZwnUUTATrg2/4M8G5yiGcYWptTvrSZX7gUWVTjarQ71LbiN6DWr1+v
         Yr/nIr5LyKNb5Q/Y38NLsoeqB2K/aF9g2/D59kiCoD+Bg7aK1xbTeCsc1fz8cmiNUIs8
         5SZw==
X-Gm-Message-State: ACgBeo0NA6nbFgHsXt2VQCYbVu2tipqVOJsEFQwxVta32sVonCFYMAvV
	78AaRs1gpLFK4abbC48LgjY=
X-Google-Smtp-Source: AA6agR49F60BoKAAj3bxWs5EH7O5Rxjmmbzndw264ksH1sHE2A+sDjwmDCt7uWuElhxtIcwzeeRWmQ==
X-Received: by 2002:a05:6402:4282:b0:43e:612c:fcf7 with SMTP id g2-20020a056402428200b0043e612cfcf7mr11105056edc.242.1660497274265;
        Sun, 14 Aug 2022 10:14:34 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:fb92:e16e:a0f2:319d? ([2a02:908:1256:79a0:fb92:e16e:a0f2:319d])
        by smtp.gmail.com with ESMTPSA id g1-20020a17090604c100b00730aa5f15cfsm3125754eja.63.2022.08.14.10.14.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Aug 2022 10:14:33 -0700 (PDT)
Message-ID: <ebb573b8-237f-602e-8d7d-9c49f0bd73be@gmail.com>
Date: Sun, 14 Aug 2022 19:14:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Nirmoy Das <nirmoy.das@amd.com>,
 Jonathan Kim <jonathan.kim@amd.com>, Philip Yang <Philip.Yang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>, Zack Rusin <zackr@vmware.com>,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
References: <20220812175753.22926-1-fmdefrancesco@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20220812175753.22926-1-fmdefrancesco@gmail.com>
Message-ID-Hash: ACTHXSFK3POM7Q5URHRBKBKTMKV55WE7
X-Message-ID-Hash: ACTHXSFK3POM7Q5URHRBKBKTMKV55WE7
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ira Weiny <ira.weiny@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amd/amdgpu: Replace kmap() with kmap_local_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ACTHXSFK3POM7Q5URHRBKBKTMKV55WE7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTIuMDguMjIgdW0gMTk6NTcgc2NocmllYiBGYWJpbyBNLiBEZSBGcmFuY2VzY286DQo+IGtt
YXAoKSBpcyBiZWluZyBkZXByZWNhdGVkIGluIGZhdm9yIG9mIGttYXBfbG9jYWxfcGFnZSgpLg0K
Pg0KPiBUaGVyZSBhcmUgdHdvIG1haW4gcHJvYmxlbXMgd2l0aCBrbWFwKCk6ICgxKSBJdCBjb21l
cyB3aXRoIGFuIG92ZXJoZWFkIGFzDQo+IG1hcHBpbmcgc3BhY2UgaXMgcmVzdHJpY3RlZCBhbmQg
cHJvdGVjdGVkIGJ5IGEgZ2xvYmFsIGxvY2sgZm9yDQo+IHN5bmNocm9uaXphdGlvbiBhbmQgKDIp
IGl0IGFsc28gcmVxdWlyZXMgZ2xvYmFsIFRMQiBpbnZhbGlkYXRpb24gd2hlbiB0aGUNCj4ga21h
cOKAmXMgcG9vbCB3cmFwcyBhbmQgaXQgbWlnaHQgYmxvY2sgd2hlbiB0aGUgbWFwcGluZyBzcGFj
ZSBpcyBmdWxseQ0KPiB1dGlsaXplZCB1bnRpbCBhIHNsb3QgYmVjb21lcyBhdmFpbGFibGUuDQo+
DQo+IFdpdGgga21hcF9sb2NhbF9wYWdlKCkgdGhlIG1hcHBpbmdzIGFyZSBwZXIgdGhyZWFkLCBD
UFUgbG9jYWwsIGNhbiB0YWtlDQo+IHBhZ2UgZmF1bHRzLCBhbmQgY2FuIGJlIGNhbGxlZCBmcm9t
IGFueSBjb250ZXh0IChpbmNsdWRpbmcgaW50ZXJydXB0cykuDQo+IEl0IGlzIGZhc3RlciB0aGFu
IGttYXAoKSBpbiBrZXJuZWxzIHdpdGggSElHSE1FTSBlbmFibGVkLiBGdXJ0aGVybW9yZSwNCj4g
dGhlIHRhc2tzIGNhbiBiZSBwcmVlbXB0ZWQgYW5kLCB3aGVuIHRoZXkgYXJlIHNjaGVkdWxlZCB0
byBydW4gYWdhaW4sIHRoZQ0KPiBrZXJuZWwgdmlydHVhbCBhZGRyZXNzZXMgYXJlIHJlc3RvcmVk
IGFuZCBhcmUgc3RpbGwgdmFsaWQuDQo+DQo+IFNpbmNlIGl0cyB1c2UgaW4gYW1kZ3B1L2FtZGdw
dV90dG0uYyBpcyBzYWZlLCBpdCBzaG91bGQgYmUgcHJlZmVycmVkLg0KPg0KPiBUaGVyZWZvcmUs
IHJlcGxhY2Uga21hcCgpIHdpdGgga21hcF9sb2NhbF9wYWdlKCkgaW4gYW1kZ3B1L2FtZGdwdV90
dG0uYy4NCj4NCj4gU3VnZ2VzdGVkLWJ5OiBJcmEgV2VpbnkgPGlyYS53ZWlueUBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEZhYmlvIE0uIERlIEZyYW5jZXNjbyA8Zm1kZWZyYW5jZXNjb0Bn
bWFpbC5jb20+DQoNCkZvciB0aG9zZSB0d28gdXNlIGNhc2VzIHRoYXQgbG9va3MgZ29vZCB0byBt
ZS4gRmVlbCBmcmVlIHRvIGFkZCBhbiANCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gLS0tDQo+
ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIHwgOCArKysrLS0tLQ0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCj4gaW5kZXggM2I0YzE5NDEy
NjI1Li5jMTE2NTdiNTkxNWYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmMNCj4gQEAgLTIzMDEsOSArMjMwMSw5IEBAIHN0YXRpYyBzc2l6ZV90IGFtZGdwdV9p
b21lbV9yZWFkKHN0cnVjdCBmaWxlICpmLCBjaGFyIF9fdXNlciAqYnVmLA0KPiAgIAkJaWYgKHAt
Pm1hcHBpbmcgIT0gYWRldi0+bW1hbi5iZGV2LmRldl9tYXBwaW5nKQ0KPiAgIAkJCXJldHVybiAt
RVBFUk07DQo+ICAgDQo+IC0JCXB0ciA9IGttYXAocCk7DQo+ICsJCXB0ciA9IGttYXBfbG9jYWxf
cGFnZShwKTsNCj4gICAJCXIgPSBjb3B5X3RvX3VzZXIoYnVmLCBwdHIgKyBvZmYsIGJ5dGVzKTsN
Cj4gLQkJa3VubWFwKHApOw0KPiArCQlrdW5tYXBfbG9jYWwocHRyKTsNCj4gICAJCWlmIChyKQ0K
PiAgIAkJCXJldHVybiAtRUZBVUxUOw0KPiAgIA0KPiBAQCAtMjM1Miw5ICsyMzUyLDkgQEAgc3Rh
dGljIHNzaXplX3QgYW1kZ3B1X2lvbWVtX3dyaXRlKHN0cnVjdCBmaWxlICpmLCBjb25zdCBjaGFy
IF9fdXNlciAqYnVmLA0KPiAgIAkJaWYgKHAtPm1hcHBpbmcgIT0gYWRldi0+bW1hbi5iZGV2LmRl
dl9tYXBwaW5nKQ0KPiAgIAkJCXJldHVybiAtRVBFUk07DQo+ICAgDQo+IC0JCXB0ciA9IGttYXAo
cCk7DQo+ICsJCXB0ciA9IGttYXBfbG9jYWxfcGFnZShwKTsNCj4gICAJCXIgPSBjb3B5X2Zyb21f
dXNlcihwdHIgKyBvZmYsIGJ1ZiwgYnl0ZXMpOw0KPiAtCQlrdW5tYXAocCk7DQo+ICsJCWt1bm1h
cF9sb2NhbChwdHIpOw0KPiAgIAkJaWYgKHIpDQo+ICAgCQkJcmV0dXJuIC1FRkFVTFQ7DQo+ICAg
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=

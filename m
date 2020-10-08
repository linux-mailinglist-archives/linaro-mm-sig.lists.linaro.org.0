Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEE92873D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 14:07:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C473B61081
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 Oct 2020 12:07:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B98C3664E3; Thu,  8 Oct 2020 12:07:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5E12666023;
	Thu,  8 Oct 2020 12:06:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C18CC61081
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 12:06:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B66B666023; Thu,  8 Oct 2020 12:06:38 +0000 (UTC)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by lists.linaro.org (Postfix) with ESMTPS id BD0F361081
 for <linaro-mm-sig@lists.linaro.org>; Thu,  8 Oct 2020 12:06:37 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id u8so7768757ejg.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 08 Oct 2020 05:06:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=gXjtIH7dAAJciFaXwreITvtgTALD51vwZB1L5IfZhnE=;
 b=loK2zfDA22U3YSvpUFy1e7krLYdYIcDGCTyXaqCT7GfGvSBEz6hzN0YMNg7Jupq+JN
 OXQDjpNcyo8shtBq7ixtcBtgOXKdi+fRcq1hxmq8C33vZGJgV0bH89VLVIAsQwrzdRd2
 GzFo8UWz9vyCpLAKQ8/Ik3tMouSD0JGuOnabyOIz/8QSgtqvwMXVq2ZgWBU7HayzEwcO
 zNO4Jdm6cBYR5eLOK7G1Phdr9FAp53nSl8V8FCOU5iItyz2LjpXL0sFo7JmenCU2LWdB
 Iervxk9mYYEhuQxKQxFah40e0LoffqMm7Wlgx+jIGiKLzMoL2cKS50kDGo9n8sRWii8D
 THCA==
X-Gm-Message-State: AOAM532WlO56qxfy362WS2FSOT+UUUI8JLbLUT5135JxN6BFmqH8wL/9
 mB8KCHqPkEsibfb8EBxwgnc=
X-Google-Smtp-Source: ABdhPJx6xc2xxF8cIvrcp9+s773JObUPxs9e5wJpF3CyCr5TW/ZXQKvGUYmaCfo2bUuLtvDCAuZ3ig==
X-Received: by 2002:a17:906:b004:: with SMTP id
 v4mr8779129ejy.156.1602158796801; 
 Thu, 08 Oct 2020 05:06:36 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id bu23sm3843061edb.69.2020.10.08.05.06.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Oct 2020 05:06:36 -0700 (PDT)
To: Matthew Wilcox <willy@infradead.org>
References: <20201008112342.9394-1-christian.koenig@amd.com>
 <20201008113937.GB20115@casper.infradead.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <41323971-7869-ed09-6181-99a567dc6d7b@gmail.com>
Date: Thu, 8 Oct 2020 14:06:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201008113937.GB20115@casper.infradead.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, daniel@ffwll.ch,
 airlied@redhat.com, akpm@linux-foundation.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/4] mm: introduce vma_set_file function
	v2
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
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

QW0gMDguMTAuMjAgdW0gMTM6Mzkgc2NocmllYiBNYXR0aGV3IFdpbGNveDoKPiBPbiBUaHUsIE9j
dCAwOCwgMjAyMCBhdCAwMToyMzozOVBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+
PiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICB8IDE2ICsrKysr
LS0tLS0tLS0tLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jICAg
ICAgfCAgNCArLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1
Zi5jIHwgIDMgKy0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
YyAgIHwgIDQgKystLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAgICAgICAg
ICAgICB8ICA0ICstLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vb21hcGRybS9vbWFwX2dlbS5jICAg
ICAgICAgfCAgMyArLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jICAgICAg
ICAgICAgfCAgMyArLS0KPj4gICBkcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9hc2htZW0uYyAgICAg
ICAgICAgfCAgNSArKy0tLQo+IC4uLgo+PiArKysgYi9tbS9tbWFwLmMKPj4gQEAgLTEzNiw2ICsx
MzYsMjIgQEAgdm9pZCB2bWFfc2V0X3BhZ2VfcHJvdChzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZt
YSkKPj4gICAJV1JJVEVfT05DRSh2bWEtPnZtX3BhZ2VfcHJvdCwgdm1fcGFnZV9wcm90KTsKPj4g
ICB9Cj4+ICAgCj4+ICsvKgo+PiArICogQ2hhbmdlIGJhY2tpbmcgZmlsZSwgb25seSB2YWxpZCB0
byB1c2UgZHVyaW5nIGluaXRpYWwgVk1BIHNldHVwLgo+PiArICovCj4+ICtzdHJ1Y3QgZmlsZSAq
dm1hX3NldF9maWxlKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCBzdHJ1Y3QgZmlsZSAqZmls
ZSkKPj4gK3sKPj4gKwlpZiAoZmlsZSkKPj4gKwkgICAgICAgIGdldF9maWxlKGZpbGUpOwo+PiAr
Cj4+ICsJc3dhcCh2bWEtPnZtX2ZpbGUsIGZpbGUpOwo+PiArCj4+ICsJaWYgKGZpbGUpCj4+ICsJ
CWZwdXQoZmlsZSk7Cj4+ICsKPj4gKwlyZXR1cm4gZmlsZTsKPj4gK30KPj4gKwo+IFRoZXNlIHVz
ZXJzIGFyZSBhbGwgcG90ZW50aWFsbHkgbW9kdWxlcy4gIFlvdSBuZWVkIGFuIEVYUE9SVF9TWU1C
T0woKT8KCk9oLCBnb29kIHBvaW50LiBZZWFoIEkgdG90YWxseSBtaXNzZWQgdGhhdC4gVGhlIGlu
aXRpYWwgRE1BLWJ1ZiB1c2UgY2FzZSAKd2FzIG5vdCBpbnNpZGUgYSBtb2R1bGUuCgpUaGFua3Ms
CkNocmlzdGlhbi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=

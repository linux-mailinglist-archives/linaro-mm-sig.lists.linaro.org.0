Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E37BB1A0E53
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2020 15:27:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1136266098
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Apr 2020 13:27:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 055BA6615F; Tue,  7 Apr 2020 13:27:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5ADB166169;
	Tue,  7 Apr 2020 13:26:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D22316615F
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2020 13:26:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C751866098; Tue,  7 Apr 2020 13:26:38 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by lists.linaro.org (Postfix) with ESMTPS id C780566098
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Apr 2020 13:26:37 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 22so3104616otf.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Apr 2020 06:26:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=chd5WzCy0W5BZwZMM5n5siOhfZK7euPR7nF8zWDeFKg=;
 b=atd5JWv7ZL0Q2WRcgYKP3UyMfFQQwzlJpDsvPRrTOuBI4RFV5yVzysjx4VwMwVbvlr
 08V6RV3AShZolPFrfZYvmyobMImMFVBS+YyvpupSemRIjWsLMmwWoTF4yuoR/Nw7umSl
 nCd4IsndIimExVKZNrmfKOL3zv9B3UTVzp90g3fhvDTljVGjUfJtK+nBfuRtmxZwDUX6
 BqPCSr9vk4C2wq7I5+1BlWQ5cBI4RFh1lB85RKmcmFjYg2IEOmrH/XNvtPDbF5l7dQGR
 9fP+RtifXZlXiv39HB5nDrkiDXr1ynq7KP0vYSNBC+4Bj4N5+H810/H+TlVzoupwoU1E
 4J4g==
X-Gm-Message-State: AGi0PuZ5Q+c9ysxGcGcapxI298EAHLjHe0nydYV1YmngQso4svRCwZp4
 2ZhnpyeAUlzJju2qKALM8jZYpRJpWxvgk5c4YwcIO1Zb
X-Google-Smtp-Source: APiQypJZWdNWLCr8c7kvNmiyUNyP8+q2DylC9N8N3tNEL0K144FrAEg+MPdooShGhw/fVijitpe8PMglbX8QxeHfbSU=
X-Received: by 2002:a9d:6c19:: with SMTP id f25mr1553187otq.371.1586265997194; 
 Tue, 07 Apr 2020 06:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200114134101.159194-1-liumartin@google.com>
 <20200224033941.GB211610@google.com>
In-Reply-To: <20200224033941.GB211610@google.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 7 Apr 2020 18:56:25 +0530
Message-ID: <CAO_48GEPKk64uepCqZEc=6XGiv4tZnPHv=RZdwzKPuUqOxjpow@mail.gmail.com>
To: Martin Liu <liumartin@google.com>, Daniel Vetter <daniel@ffwll.ch>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, minchan@kernel.org,
 jenhaochen@google.com, wvw@google.com, surenb@google.com,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: support 32bit DMA_BUF_SET_NAME
	ioctl
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGVsbG8sCgpEYW5pZWwsIHlvdXIgY29tbWVudHMgaGVyZSwgcGxlYXNlPwoKT24gTW9uLCAyNCBG
ZWIgMjAyMCBhdCAwOTowOSwgTWFydGluIExpdSA8bGl1bWFydGluQGdvb2dsZS5jb20+IHdyb3Rl
Ogo+Cj4gT24gVHVlLCBKYW4gMTQsIDIwMjAgYXQgMDk6NDE6MDFQTSArMDgwMCwgTWFydGluIExp
dSB3cm90ZToKPgo+IENDIG1vcmUgTUxzIGZvciB3aW5kZXIgcmV2aWV3Lgo+Cj4gPiBUaGlzIGNv
bW1pdCBhZGRzIFNFVF9OQU1FIGlvY3RsIGNvdmVyc2lvbiB0bwo+ID4gc3VwcG9ydCAzMiBiaXQg
aW9jdGwuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTWFydGluIExpdSA8bGl1bWFydGluQGdvb2ds
ZS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMjIgKysrKysr
KysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVm
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gPiBpbmRleCBjZTQxY2Q5Yjc1OGEuLmE3
MzA0OGIzNDg0MyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+IEBAIC0yNSw2ICsyNSw3IEBACj4g
PiAgI2luY2x1ZGUgPGxpbnV4L21tLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L21vdW50Lmg+Cj4g
PiAgI2luY2x1ZGUgPGxpbnV4L3BzZXVkb19mcy5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9jb21w
YXQuaD4KPiA+Cj4gPiAgI2luY2x1ZGUgPHVhcGkvbGludXgvZG1hLWJ1Zi5oPgo+ID4gICNpbmNs
dWRlIDx1YXBpL2xpbnV4L21hZ2ljLmg+Cj4gPiBAQCAtNDA5LDEzICs0MTAsMzIgQEAgc3RhdGlj
IHZvaWQgZG1hX2J1Zl9zaG93X2ZkaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBmaWxl
ICpmaWxlKQo+ID4gICAgICAgZG1hX3Jlc3ZfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7Cj4gPiAgfQo+
ID4KPiA+ICsjaWZkZWYgQ09ORklHX0NPTVBBVAo+ID4gK3N0YXRpYyBsb25nIGRtYV9idWZfaW9j
dGxfY29tcGF0KHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgY21kLAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgYXJnKQo+ID4gK3sKPiA+ICsg
ICAgIHN3aXRjaCAoX0lPQ19OUihjbWQpKSB7Cj4gPiArICAgICBjYXNlIF9JT0NfTlIoRE1BX0JV
Rl9TRVRfTkFNRSk6Cj4gPiArICAgICAgICAgICAgIC8qIEZpeCB1cCBwb2ludGVyIHNpemUqLwo+
ID4gKyAgICAgICAgICAgICBpZiAoX0lPQ19TSVpFKGNtZCkgPT0gc2l6ZW9mKGNvbXBhdF91cHRy
X3QpKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY21kICY9IH5JT0NTSVpFX01BU0s7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgY21kIHw9IHNpemVvZih2b2lkICopIDw8IElPQ1NJWkVf
U0hJRlQ7Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsgICAgICAgICAgICAgYnJlYWs7Cj4gPiAr
ICAgICB9Cj4gPiArICAgICByZXR1cm4gZG1hX2J1Zl9pb2N0bChmaWxlLCBjbWQsICh1bnNpZ25l
ZCBsb25nKWNvbXBhdF9wdHIoYXJnKSk7Cj4gPiArfQo+ID4gKyNlbmRpZgo+ID4gKwo+ID4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIGRtYV9idWZfZm9wcyA9IHsKPiA+ICAg
ICAgIC5yZWxlYXNlICAgICAgICA9IGRtYV9idWZfcmVsZWFzZSwKPiA+ICAgICAgIC5tbWFwICAg
ICAgICAgICA9IGRtYV9idWZfbW1hcF9pbnRlcm5hbCwKPiA+ICAgICAgIC5sbHNlZWsgICAgICAg
ICA9IGRtYV9idWZfbGxzZWVrLAo+ID4gICAgICAgLnBvbGwgICAgICAgICAgID0gZG1hX2J1Zl9w
b2xsLAo+ID4gICAgICAgLnVubG9ja2VkX2lvY3RsID0gZG1hX2J1Zl9pb2N0bCwKPiA+IC0gICAg
IC5jb21wYXRfaW9jdGwgICA9IGNvbXBhdF9wdHJfaW9jdGwsCj4gPiArI2lmZGVmIENPTkZJR19D
T01QQVQKPiA+ICsgICAgIC5jb21wYXRfaW9jdGwgICA9IGRtYV9idWZfaW9jdGxfY29tcGF0LAo+
ID4gKyNlbmRpZgo+ID4gICAgICAgLnNob3dfZmRpbmZvICAgID0gZG1hX2J1Zl9zaG93X2ZkaW5m
bywKPiA+ICB9Owo+ID4KPiA+IC0tCj4gPiAyLjI1LjAucmMxLjI4My5nODhkZmRjNDE5My1nb29n
Cj4gPgoKCgotLSAKVGhhbmtzIGFuZCByZWdhcmRzLAoKU3VtaXQgU2Vtd2FsCkxpbmFybyBDb25z
dW1lciBHcm91cCAtIEtlcm5lbCBUZWFtIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==

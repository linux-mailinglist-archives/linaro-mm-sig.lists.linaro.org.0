Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7CE18A0F5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2020 17:54:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E68446195A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Mar 2020 16:54:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DBF156194F; Wed, 18 Mar 2020 16:54:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 04F2961613;
	Wed, 18 Mar 2020 16:53:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9056B6194F
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2020 16:53:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B0066195A; Wed, 18 Mar 2020 16:53:26 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 2660361613
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2020 16:53:25 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id a25so31327108wrd.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Mar 2020 09:53:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=aeYeB3CANOqnObt2Bin2EEGlMMGDpXacO9WnKapSaKA=;
 b=HmqtwSn3v9sVnImk/O8SQuUDR8/ufZl7vsJmVLkED6F1331QTkkE7UF0D7L5J1xJvT
 UNSCyXYk2bidaVQjbeG4/9eNrdQY2brtkr6ZV8HCYByfpkScspblHzLRIWdW/HanhbpV
 4pOV+c/VAn0U7MsjvX4GELbyMXXfRq+U2Vp8NpgV3luj7sV0SO6GxYBEq3WZnaaTUUL6
 ElY2yBQel637B6XMu4GyOeLwvID/oPnmCB7ztW821A/VxtMHYSjTW+OeRPW7j6oyRxZk
 6HVZedxHqIVypgy6Ri/198zMsjYVwmT8ngbsz6RqQ1PH91Me18fT12fSX1f5gKNKcxp6
 bmtw==
X-Gm-Message-State: ANhLgQ3QNy+UHQp8NkvwFaDYjD6zfrd5Hn9L8+fwRbICqM69UswFMreE
 nlLHFvY6DFZHgkf3YJSePH+euQ==
X-Google-Smtp-Source: ADFU+vtcYeHhH9FydXIAf6eT5ZTQaTUtKOqGS0qBVL7DDqzoRzo3pE0LLtATqw5ydhtSupfkeFxxrQ==
X-Received: by 2002:adf:ed8a:: with SMTP id c10mr6775194wro.423.1584550404216; 
 Wed, 18 Mar 2020 09:53:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o23sm10472342wro.23.2020.03.18.09.53.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 09:53:23 -0700 (PDT)
Date: Wed, 18 Mar 2020 17:53:21 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <20200318165321.GZ2363188@phenom.ffwll.local>
Mail-Followup-To: Sumit Semwal <sumit.semwal@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 Joe Perches <joe@perches.com>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20200317205643.1028398-1-daniel.vetter@ffwll.ch>
 <CAO_48GH1YkA4mvjyQ=88VRrDPc4Kh8fiFsm-MOaNFfWhhaxfbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO_48GH1YkA4mvjyQ=88VRrDPc4Kh8fiFsm-MOaNFfWhhaxfbw@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: LKML <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>, Joe Perches <joe@perches.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Better regex for
	dma_buf|fence|resv
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

T24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMDk6MTY6MTdQTSArMDUzMCwgU3VtaXQgU2Vtd2FsIHdy
b3RlOgo+IEhlbGxvIERhbmllbCwKPiAKPiBUaGFua3MgZm9yIHRoZSBwYXRjaC4KPiAKPiBPbiBX
ZWQsIDE4IE1hciAyMDIwIGF0IDAyOjI2LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZm
d2xsLmNoPiB3cm90ZToKPiA+Cj4gPiBXZSdyZSBnZXR0aW5nIHNvbWUgcmFuZG9tIG90aGVyIHN0
dWZmIHRoYXQgd2UncmUgbm90IHJlYWxseSBpbnRlcmVzdGVkCj4gPiBpbiwgc28gbWF0Y2ggb25s
eSB3b3JkIGJvdW5kYXJpZXMuIEFsc28gYXZvaWQgdGhlIGNhcHR1cmUgZ3JvdXAgd2hpbGUKPiA+
IGF0IGl0Lgo+ID4KPiA+IFN1Z2dlc3RlZCBieSBKb2UgUGVyY2hlcy4KPiA+Cj4gPiBDYzogbGlu
dXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+ID4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+ID4gQ2M6IEpv
ZSBQZXJjaGVzIDxqb2VAcGVyY2hlcy5jb20+Cj4gPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5z
ZW13YWxAbGluYXJvLm9yZz4KPiA+IENjOiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNv
bT4KPiAKPiBBY2tlZC1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4K
ClRoYW5rcyBmb3IgeW91ciBhY2ssIHBhdGNoIGFwcGxpZWQuCi1EYW5pZWwKCj4gPiAtLS0KPiA+
IHYyOiBObyBzaW5nbGUgcXVvdGVzIGluIE1BSU5UQUlORVJTIChKb2UpCj4gPiB2MzogRml4IHR5
cG8gaW4gY29tbWl0IG1lc3NhZ2UgKFNhbSkKPiA+IC0tLQo+ID4gIE1BSU5UQUlORVJTIHwgMiAr
LQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gPiBpbmRleCAzMDA1
YmU2MzhjMmMuLmVkNjA4OGEwMWJmZSAxMDA2NDQKPiA+IC0tLSBhL01BSU5UQUlORVJTCj4gPiAr
KysgYi9NQUlOVEFJTkVSUwo+ID4gQEAgLTUwMjUsNyArNTAyNSw3IEBAIEY6ICAgICAgICBpbmNs
dWRlL2xpbnV4L2RtYS1idWYqCj4gPiAgRjogICAgIGluY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24u
aAo+ID4gIEY6ICAgICBpbmNsdWRlL2xpbnV4LypmZW5jZS5oCj4gPiAgRjogICAgIERvY3VtZW50
YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+ID4gLUs6ICAgICBkbWFfKGJ1ZnxmZW5jZXxy
ZXN2KQo+ID4gK0s6ICAgICBcYmRtYV8oPzpidWZ8ZmVuY2V8cmVzdilcYgo+ID4gIFQ6ICAgICBn
aXQgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybS1taXNjCj4gPgo+ID4gIERN
QS1CVUYgSEVBUFMgRlJBTUVXT1JLCj4gPiAtLQo+ID4gMi4yNS4xCj4gPgoKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpo
dHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

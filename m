Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D22160E7C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2020 10:28:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFE65617B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Feb 2020 09:28:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A2249618DF; Mon, 17 Feb 2020 09:28:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80B41617B9;
	Mon, 17 Feb 2020 09:27:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B8B0B60F55
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 09:27:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9AD1D617B9; Mon, 17 Feb 2020 09:27:56 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 874CE60F55
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 09:27:55 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p9so16362438wmc.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Feb 2020 01:27:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=W3cuPNWL6G9Mkzazr5aYw69mCYySh4JxTzpizFSnP50=;
 b=Hfbnk8aF/to/B5YI4oZCVURxSJr2d73K3aHmciqkIGCROKPTy4w7YOeubguH27V0Lm
 dJXW04mToloIzrqPhlmCWYyhj2cPBXC7NzHCGZKxwOZRyk0J043m6ZNUrpPkpN+5KflN
 fqP5MWjJCBsjk0R0tNP3LpQdG1NNNmCYeU+SNmcU6LOYgGglGuKPnK8sY6ZgCgYIssmI
 z55Y/WA9J7jntIk/KIS7G9So3CDTnclefHALjdFB22OUxKlT+LKssfGjx9n9s9KLs6VL
 7fuk1arMl7ftCpB1HLj0kEx3ZI1og0cSfty9B95Spsds9TpUVd8FLBEBpk/0QVhJwIc5
 kl7g==
X-Gm-Message-State: APjAAAVm69DMjF/V8Zcszt0xf868pmUABrLv67VDffmY2odTbjmq+gP7
 mqm+mMxuN/+Ah7kge2pXezO7oQ==
X-Google-Smtp-Source: APXvYqwubPOPLq30URt7q/mmbsEDobFNeewy4T855nPo/3eKy/wiWdgXW1I99+bIl4JyIDmgOWUVgA==
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr19977570wmi.146.1581931674639; 
 Mon, 17 Feb 2020 01:27:54 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v15sm114015wrf.7.2020.02.17.01.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 01:27:53 -0800 (PST)
Date: Mon, 17 Feb 2020 10:27:52 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <20200217092752.GF2363188@phenom.ffwll.local>
Mail-Followup-To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 sumit.semwal@linaro.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20200216114708.20583-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200216114708.20583-1-christophe.jaillet@wanadoo.fr>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix a typo in Kconfig
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

T24gU3VuLCBGZWIgMTYsIDIwMjAgYXQgMTI6NDc6MDhQTSArMDEwMCwgQ2hyaXN0b3BoZSBKQUlM
TEVUIHdyb3RlOgo+IEEgJ2gnIGlzbWlzc2luZyBpbicgc3luY3Jvbml6YXRpb24nCj4gCj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBKQUlMTEVUIDxjaHJpc3RvcGhlLmphaWxsZXRAd2FuYWRv
by5mcj4KCkFwcGxpZWQsIHRoYW5rcyBmb3IgeW91ciBwYXRjaC4KLURhbmllbAoKPiAtLS0KPiAg
ZHJpdmVycy9kbWEtYnVmL0tjb25maWcgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
S2NvbmZpZyBiL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmlnCj4gaW5kZXggMDYxM2JiNzc3MGY1Li5l
N2Q4MjBjZTA3MjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcKPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvS2NvbmZpZwo+IEBAIC02LDcgKzYsNyBAQCBjb25maWcgU1lOQ19G
SUxFCj4gIAlkZWZhdWx0IG4KPiAgCXNlbGVjdCBETUFfU0hBUkVEX0JVRkZFUgo+ICAJLS0taGVs
cC0tLQo+IC0JICBUaGUgU3luYyBGaWxlIEZyYW1ld29yayBhZGRzIGV4cGxpY2l0IHN5bmNyb25p
emF0aW9uIHZpYQo+ICsJICBUaGUgU3luYyBGaWxlIEZyYW1ld29yayBhZGRzIGV4cGxpY2l0IHN5
bmNocm9uaXphdGlvbiB2aWEKPiAgCSAgdXNlcnNwYWNlLiBJdCBlbmFibGVzIHNlbmQvcmVjZWl2
ZSAnc3RydWN0IGRtYV9mZW5jZScgb2JqZWN0cyB0by9mcm9tCj4gIAkgIHVzZXJzcGFjZSB2aWEg
U3luYyBGaWxlIGZkcyBmb3Igc3luY2hyb25pemF0aW9uIGJldHdlZW4gZHJpdmVycyB2aWEKPiAg
CSAgdXNlcnNwYWNlIGNvbXBvbmVudHMuIEl0IGhhcyBiZWVuIHBvcnRlZCBmcm9tIEFuZHJvaWQu
Cj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50
ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

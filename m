Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3941CD61C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 12:12:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 08EBE6183D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 May 2020 10:12:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id EFB0C61868; Mon, 11 May 2020 10:12:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8898B617CF;
	Mon, 11 May 2020 10:12:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A07360696
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 10:12:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 48AC0617CF; Mon, 11 May 2020 10:12:08 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id 8E32D60696
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 10:12:06 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id n5so3608782wmd.0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 11 May 2020 03:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=AxDN71QWVlIvPR/Qe9BjED7lK/KCTSrcSC7GeFvMB4Y=;
 b=TCvVr0uLmA3j+vOJZYbMJBU/WangfvzeYy/OMFtqHydpPC3mWrgd+RfEmhs8AXMNbh
 l+9vtUeBfnjpY46lVtdily8OzkX0uWKgMBTU7mJYC30W40aUN29FyAF6k+rriQ4gKE4H
 7FqevARf65O+7ANLeT5A7N0qzQvg9z+N0jrfmoyoxha6aQo1p4Vh/G3ZKrxS5VbLBQTW
 uqaveZ/7TWYksNjAUsN9gCp0Rh+2PbleU6MKp+CJ12m13ZFFuG+E2lV1oBwDaxWHoRw7
 5DA10vlmy06Kyr771vRwik+zp+sPMXxw65k7f6eP7ZqRLQvzPXjhmB++Y89JooDzNa+V
 3gKA==
X-Gm-Message-State: AGi0Puay+nQZm00VsyStj1BPlq5vHDXxEIv+dTp0MTgKBC680apRL4BG
 Jg59WuvkbuwHcv2HsR34jbz7kg==
X-Google-Smtp-Source: APiQypJduS5g8MSJy/JNzf+Alo7zIfVFjEdcgIp2nM0k6p91EvBmHQ+tR8aq272pVf8oIkv+vmiJPw==
X-Received: by 2002:a05:600c:230e:: with SMTP id
 14mr2914697wmo.45.1589191925721; 
 Mon, 11 May 2020 03:12:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a10sm18015507wrp.0.2020.05.11.03.12.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 03:12:05 -0700 (PDT)
Date: Mon, 11 May 2020 12:12:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200511101202.GB206103@phenom.ffwll.local>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <20200511091142.208787-2-daniel.vetter@ffwll.ch>
 <158919006380.1729.6928823811672806738@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158919006380.1729.6928823811672806738@build.alporthouse.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/3] dma-fence: use default wait
	function for mock fences
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

T24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMTA6NDE6MDNBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAyMC0wNS0xMSAxMDoxMTo0MSkKPiA+IE5v
IG5lZWQgdG8gbWljcm8tb3B0bWl6ZSB3aGVuIHdlJ3JlIHdhaXRpbmcgaW4gYSBtb2NrZWQgb2Jq
ZWN0IC4uLgo+IAo+IEl0J3Mgc2V0dGluZyB1cCB0aGUgZXhwZWN0ZWQgcmV0dXJuIHZhbHVlcyBm
b3IgdGhlIHRlc3QuCgpEcmF0LCBJIHN1c3BlY3Qgc29tZXRoaW5nIGxpa2UgdGhhdCBidXQgZGlk
bid0IHNwb3QgaXQuIEtpbmRhIHdvbmRlcmluZwp3aGV0aGVyIHdlIHNob3VsZCBtYXliZSBsaWZ0
IHRoZSAtRVRJTUUgc3BlY2lhbCBjYXNlIHRvIHRoZSBnZW5lcmljCnZlcnNpb24uIEJ1dCB0aGF0
J3Mgbm90IHJlYWxseSBhIHNhZmUgdGhpbmcgdG8gZG8gdGhlcmUsIGRyaXZlcnMgbWlnaHQKYWN0
dWFsbHkgdXNlIGl0IGZvciBmdW5ueSBzdHVmZi4KCkFueXdheSBtb3RpdmF0aW9uIGlzIHRoYXQg
SSdtIHBvbmRlcmluZyBzb21lIGV4dGVuc2lvbnMgb2YgZG1hX2ZlbmNlX3dhaXQKYW5kIHJlbW92
aW5nIGFzIG1hbnkgb2YgdGhlIC0+d2FpdCBob29rcyBhcyBwb3NzaWJsZSB3b3VsZCBoYXZlIGhl
bHBlZC4KQnV0IHRoZXJlJ3Mgc29tZSBuYXN0aWVyIHN0dWZmIGxpa2UgdGhlIGxlZ2FjeSBub3V2
ZWEgYW5kIHJhZGVvbiBvbmVzLgotRGFuaWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==

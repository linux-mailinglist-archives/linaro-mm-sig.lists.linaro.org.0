Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CF42AA73D
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 18:34:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89D6F607A4
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 17:34:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7E93C610FD; Sat,  7 Nov 2020 17:34:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 565FC6088F;
	Sat,  7 Nov 2020 17:34:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7B3AC607A4
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 17:34:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 68A7C6088F; Sat,  7 Nov 2020 17:34:13 +0000 (UTC)
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by lists.linaro.org (Postfix) with ESMTPS id 8FCD1607A4
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 17:34:11 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 37A3980530;
 Sat,  7 Nov 2020 18:34:08 +0100 (CET)
Date: Sat, 7 Nov 2020 18:34:06 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20201107173406.GA1030984@ravnborg.org>
References: <20201106214949.2042120-1-lee.jones@linaro.org>
 <9d4be6a4-4f39-b908-4086-2b6adb695465@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d4be6a4-4f39-b908-4086-2b6adb695465@amd.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8 a=mBk19mKJqlyWPAr97ekA:9
 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Faith <faith@valinux.com>, Alex Deucher <alexander.deucher@amd.com>,
 Andy Gross <andy.gross@ti.com>, David Airlie <airlied@linux.ie>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Clark <rob.clark@linaro.org>,
 linaro-mm-sig@lists.linaro.org, Leo Li <sunpeng.li@amd.com>,
 Huang Rui <ray.huang@amd.com>, amd-gfx@lists.freedesktop.org,
 Keith Whitwell <keith@tungstengraphics.com>,
 Jeff Hartmann <jhartmann@valinux.com>, Rob Clark <rob@ti.com>,
 Gareth Hughes <gareth@valinux.com>, Lee Jones <lee.jones@linaro.org>,
 by <jhartmann@precisioninsight.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 00/19] [Set 2] Rid W=1 warnings from GPU
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

SGkgQ2hyaXN0aWFuLgoKPiBJJ20gbm90IHN1cmUgaWYgd2Ugd2FudCB0byBkbyBzb21lIG9mIHRo
ZSBzdWdnZXN0ZWQgY2hhbmdlcyB0byByYWRlb24uCgpBbGwgcGF0Y2hlcyBmb3IgcmFkZW9uIGxv
b2tzIGdvb2QgdG8gbWUgZXhjZXB0ICJkcm0vcmFkZW9uL3JhZGVvbjogTW92ZQpwcm90b3R5cGUg
aW50byBzaGFyZWQgaGVhZGVyIi4KCkFja2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+CmZyb20gbWUgdG8gaGF2ZSB0aGVtIGFwcGxpZWQgKGV4Y2VwdCB0aGUgc2hhcmVkIGhl
YWRlciBvbmUpLgpJIGNhbiByZXBseSB0byB0aGUgaW5kaXZpZHVhbCBwYXRjaGVzIGlmIHlvdSBs
aWtlLgoKCVNhbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=

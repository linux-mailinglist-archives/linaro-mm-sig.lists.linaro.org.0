Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E3E2AA7A1
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 20:29:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C39060850
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  7 Nov 2020 19:29:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4D2A0608BA; Sat,  7 Nov 2020 19:29:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5785F6088F;
	Sat,  7 Nov 2020 19:29:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 92FAA60649
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 19:29:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7DA056088F; Sat,  7 Nov 2020 19:29:28 +0000 (UTC)
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by lists.linaro.org (Postfix) with ESMTPS id 43B6860649
 for <linaro-mm-sig@lists.linaro.org>; Sat,  7 Nov 2020 19:29:27 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 8498E8052E;
 Sat,  7 Nov 2020 20:29:24 +0100 (CET)
Date: Sat, 7 Nov 2020 20:29:22 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Lee Jones <lee.jones@linaro.org>
Message-ID: <20201107192922.GA1039949@ravnborg.org>
References: <20201106214949.2042120-1-lee.jones@linaro.org>
 <9d4be6a4-4f39-b908-4086-2b6adb695465@amd.com>
 <20201107173406.GA1030984@ravnborg.org>
 <20201107184138.GS2063125@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201107184138.GS2063125@dell>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=z3vUUUWfv_O9Fg17TOIA:9 a=CjuIK1q_8ugA:10
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Faith <faith@valinux.com>, Alex Deucher <alexander.deucher@amd.com>,
 Andy Gross <andy.gross@ti.com>, David Airlie <airlied@linux.ie>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Clark <rob.clark@linaro.org>,
 linaro-mm-sig@lists.linaro.org, Leo Li <sunpeng.li@amd.com>,
 Huang Rui <ray.huang@amd.com>, amd-gfx@lists.freedesktop.org,
 Keith Whitwell <keith@tungstengraphics.com>,
 Jeff Hartmann <jhartmann@valinux.com>, Rob Clark <rob@ti.com>,
 Gareth Hughes <gareth@valinux.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
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

T24gU2F0LCBOb3YgMDcsIDIwMjAgYXQgMDY6NDE6MzhQTSArMDAwMCwgTGVlIEpvbmVzIHdyb3Rl
Ogo+IE9uIFNhdCwgMDcgTm92IDIwMjAsIFNhbSBSYXZuYm9yZyB3cm90ZToKPiAKPiA+IEhpIENo
cmlzdGlhbi4KPiA+IAo+ID4gPiBJJ20gbm90IHN1cmUgaWYgd2Ugd2FudCB0byBkbyBzb21lIG9m
IHRoZSBzdWdnZXN0ZWQgY2hhbmdlcyB0byByYWRlb24uCj4gPiAKPiA+IEFsbCBwYXRjaGVzIGZv
ciByYWRlb24gbG9va3MgZ29vZCB0byBtZSBleGNlcHQgImRybS9yYWRlb24vcmFkZW9uOiBNb3Zl
Cj4gPiBwcm90b3R5cGUgaW50byBzaGFyZWQgaGVhZGVyIi4KPiAKPiBXYXMgdGhhdCB0aGUgb25l
IHdoZXJlIHRoZSBwcm90b3R5cGUgbmVlZHMgbW92aW5nIHRvIHJhZGVvbi5oPwpZZXMsCgoJU2Ft
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

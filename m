Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA5B2ABFC8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 16:26:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D6050665F2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 15:26:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C1E4966635; Mon,  9 Nov 2020 15:26:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB9BD665B5;
	Mon,  9 Nov 2020 15:25:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D4970665A5
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 15:25:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C8BCF6621A; Mon,  9 Nov 2020 15:25:39 +0000 (UTC)
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by lists.linaro.org (Postfix) with ESMTPS id 89E7A6621A
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 15:25:38 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id C30C58053A;
 Mon,  9 Nov 2020 16:25:32 +0100 (CET)
Date: Mon, 9 Nov 2020 16:25:30 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Lee Jones <lee.jones@linaro.org>
Message-ID: <20201109152530.GA1888045@ravnborg.org>
References: <20201106214949.2042120-1-lee.jones@linaro.org>
 <20201106214949.2042120-11-lee.jones@linaro.org>
 <20201107142651.GA1014611@ravnborg.org>
 <20201109110603.GV2063125@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109110603.GV2063125@dell>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=IkcTkHD0fZMA:10 a=0bRNquZ1QDSsZ4hO3z4A:9 a=QEXdDO2ut3YA:10
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 10/19] drm/radeon/radeon: Move prototype
 into shared header
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

SGkgTGVlLAo+ID4gCj4gPiBPdGhlciBwdWJsaWMgZnVuY3Rpb25zIGluIHJhZGVvbl9kZXZpY2Uu
YyBoYXZlIHRoZWlyIHByb3RvdHlwZSBpbgo+ID4gcmFkZW9uLmggLSBmb3IgZXhhbXBsZSByYWRl
b25faXNfcHgoKQo+ID4gCj4gPiBBZGQgcmFkZW9uX2RldmljZV9pc192aXJ0dWFsKCkgdGhlcmUg
c28gd2UgYXZvaWlkIHRoaXMgbmV3IGhlYWRlci4KPiAKPiBPaCB5ZXMsIEkgcmVtZW1iZXIgd2h5
IHRoaXMgd2Fzbid0IGEgc3VpdGFibGUgc29sdXRpb24gbm93Ogo+IAo+IFRoZSBtYWNybyAicmFk
ZW9uX2luaXQiIGluIHJhZGVvbi5oIGNsYXNoZXMgd2l0aCB0aGUgaW5pdCBmdW5jdGlvbiBvZgo+
IHRoZSBzYW1lIG5hbWUgaW4gcmFkZW9uX2Rydi5jOgo+IAo+ICAgSW4gZmlsZSBpbmNsdWRlZCBm
cm9tIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Rydi5jOjUzOgo+ICAgZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fZHJ2LmM6NjIwOjMxOiBlcnJvcjogZXhwZWN0ZWQgaWRlbnRp
ZmllciBvciDigJgo4oCZIGJlZm9yZSDigJh2b2lk4oCZCj4gICA2MjAgfCBzdGF0aWMgaW50IF9f
aW5pdCByYWRlb25faW5pdCh2b2lkKQouLi4KPiAKPiBIb3cgd291bGQgeW91IGxpa2UgbWUgdG8g
bW92ZSBmb3J3YXJkPwoKRml4IHRoZSB0aG91c2FuZCBvZiB3YXJuaW5ncyBpbiBvdGhlciBwbGFj
ZXMgOi0pCkkgd2lsbCB0YWtlIGEgbG9vayBhdCByYWRlb24gYW5kIHBvc3QgYSBuZXcgc2VyaWVz
IGJhc2VkIG9uIHlvdXIgd29yawp3aXRoIGFsbCBXPTEgd2FybmluZ3MgZml4ZWQuCgoJU2FtCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

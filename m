Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E61464B47
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 11:09:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFC9C617AB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  1 Dec 2021 10:09:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A5DB660F06; Wed,  1 Dec 2021 10:09:38 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 632CE60E25;
	Wed,  1 Dec 2021 10:09:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C829F60581
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 10:09:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BAFFA60E24; Wed,  1 Dec 2021 10:09:32 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by lists.linaro.org (Postfix) with ESMTPS id B251B60581
 for <linaro-mm-sig@lists.linaro.org>; Wed,  1 Dec 2021 10:09:30 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id m12so8907994ljj.6
 for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Dec 2021 02:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OUz5GIJwWhsCyqmvdwiSMp+8PenKcEyq20yCWjGw6oo=;
 b=h0Fitg9dKp6Gl/4ZI0YCCzy6luvo1s9aJSiGf6y033HzRqpc5bZcL22MlRCxP3mbCw
 qaFmDSHUWkmclJFd6Gfp/IFpPuiU7sHzEXpo7ODUC+M3ObKQBAze5n0u8m5zdnSf40pd
 rWicWAkANUpI3/KhOCbjO6u0XEmS6Zjz6t6xbahAOXpcxxGSwPHx2ZvT9rC83GjQ/Jyi
 Zs4Tb/H/YaHN/WStBxRlcFz1073veJYxBn+ifRYQ4WrGuao/yfclD+EQY65wwJ1LSDgT
 t35ruCeNnZ7SL3r0UrUHhEBHvQHgn/B3WNXWOVMGwWma20ykKSLR2Leaqfo+hPq4XYAq
 HpsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OUz5GIJwWhsCyqmvdwiSMp+8PenKcEyq20yCWjGw6oo=;
 b=f9qcUhc+wohhlXeZL+M/YWg2OqeIQagXLCJIFlxXHbH+lm5o6X6ElOUgESTq0usWfN
 /beAbzXrTxIK2Z2T33VKvONkB4r0ev7AjsoUD+xw8WET1dmnYV3dchizkfhPNO3iPR/4
 qEHT43a99tYuhstqShOuhdp7zhS918vrKS8BIotKsnwQeVN1r4hSViTAuhLF8SO3wEzz
 0eDSVYsQqkFVsmPT99MIKytt9IDq2Xw6m+GEA72ZMoQGVgnx1Ak5lLaRctRGLqL7u+V/
 5OD3hCtXMTR1esEzhql/6h58XOOopEah90+lI3mc1wLzvSzx3tqddklvDPoWxc7lLILn
 lpkQ==
X-Gm-Message-State: AOAM5309OB/QjtVDPGHh20Vs1EkAYIqUtQbeUC1oYL4psKcFu/apnawP
 GIsIvPh109YU5EgEHUSVG44Jn44x7FJsX+KUNB0jzRjp
X-Google-Smtp-Source: ABdhPJzDsJHqm+aHiy+lkIXP5Ar3k9o7SMl/nP/3Xx3p2ShJFSukJaXUE1CMRVgy9JAkWUv59xYkYWSvKKpQZ+pGyjE=
X-Received: by 2002:a2e:5850:: with SMTP id x16mr4763005ljd.122.1638353369362; 
 Wed, 01 Dec 2021 02:09:29 -0800 (PST)
MIME-Version: 1.0
References: <YaB/JHP/pMbgRJ1O@kroah.com>
 <20211126074904.88388-1-guangming.cao@mediatek.com>
 <CALAqxLVF1BPznzwjem2BcsDDoo5gMoBqjKEceZDLJan4zCtk3w@mail.gmail.com>
In-Reply-To: <CALAqxLVF1BPznzwjem2BcsDDoo5gMoBqjKEceZDLJan4zCtk3w@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 1 Dec 2021 15:39:17 +0530
Message-ID: <CAO_48GHxanR=-mN232ANwxQEiBo9zb3WjvO-6WmP6eFYWA1M5A@mail.gmail.com>
To: John Stultz <john.stultz@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4] dma-buf: system_heap: Use
 'for_each_sgtable_sg' in pages free flow
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: guangming.cao@mediatek.com, wsd_upstream@mediatek.com,
 kuan-ying.lee@mediatek.com, greg@kroah.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, brian.starkey@arm.com,
 linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org,
 lmark@codeaurora.org, benjamin.gaignard@linaro.org, matthias.bgg@gmail.com,
 stable@vger.kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGVsbG8gR3VhbmdtaW5nLAoKT24gTW9uLCAyOSBOb3YgMjAyMSBhdCAyMzozNSwgSm9obiBTdHVs
dHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBOb3YgMjUsIDIw
MjEgYXQgMTE6NDggUE0gPGd1YW5nbWluZy5jYW9AbWVkaWF0ZWsuY29tPiB3cm90ZToKPiA+Cj4g
PiBGcm9tOiBHdWFuZ21pbmcgPEd1YW5nbWluZy5DYW9AbWVkaWF0ZWsuY29tPgo+ID4KPiA+IEZv
ciBwcmV2aW91cyB2ZXJzaW9uLCBpdCB1c2VzICdzZ190YWJsZS5uZW50J3MgdG8gdHJhdmVyc2Ug
c2dfdGFibGUgaW4gcGFnZXMKPiA+IGZyZWUgZmxvdy4KPiA+IEhvd2V2ZXIsICdzZ190YWJsZS5u
ZW50cycgaXMgcmVhc3NpZ25lZCBpbiAnZG1hX21hcF9zZycsIGl0IG1lYW5zIHRoZSBudW1iZXIg
b2YKPiA+IGNyZWF0ZWQgZW50cmllcyBpbiB0aGUgRE1BIGFkZGVyZXNzIHNwYWNlLgo+ID4gU28s
IHVzZSAnc2dfdGFibGUubmVudHMnIGluIHBhZ2VzIGZyZWUgZmxvdyB3aWxsIGNhc2Ugc29tZSBw
YWdlcyBjYW4ndCBiZSBmcmVlZC4KPiA+Cj4gPiBIZXJlIHdlIHNob3VsZCB1c2Ugc2dfdGFibGUu
b3JpZ19uZW50cyB0byBmcmVlIHBhZ2VzIG1lbW9yeSwgYnV0IHVzZSB0aGUKPiA+IHNndGFibGUg
aGVscGVyICdmb3IgZWFjaF9zZ3RhYmxlX3NnJygsIGluc3RlYWQgb2YgdGhlIHByZXZpb3VzIHJh
dGhlciBjb21tb24KPiA+IGhlbHBlciAnZm9yX2VhY2hfc2cnIHdoaWNoIG1heWJlIGNhdXNlIG1l
bW9yeSBsZWFrKSBpcyBtdWNoIGJldHRlci4KClRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcyBhbmQg
dGhlIHBhdGNoOyBhcHBsaWVkIHRvIGRybS1taXNjLWZpeGVzLgo+ID4KPiA+IEZpeGVzOiBkOTYz
YWIwZjE1ZmIwICgiZG1hLWJ1Zjogc3lzdGVtX2hlYXA6IEFsbG9jYXRlIGhpZ2hlciBvcmRlciBw
YWdlcyBpZiBhdmFpbGFibGUiKQo+ID4gU2lnbmVkLW9mZi1ieTogR3VhbmdtaW5nIDxHdWFuZ21p
bmcuQ2FvQG1lZGlhdGVrLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmlu
Lm11cnBoeUBhcm0uY29tPgo+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIDUuMTEu
Kgo+Cj4gVGhhbmtzIHNvIG11Y2ggZm9yIGNhdGNoaW5nIHRoaXMgYW5kIHNlbmRpbmcgaW4gYWxs
IHRoZSByZXZpc2lvbnMhCj4KPiBSZXZpZXdlZC1ieTogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6
QGxpbmFyby5vcmc+CgoKQmVzdCwKU3VtaXQuCgotLSAKVGhhbmtzIGFuZCByZWdhcmRzLAoKU3Vt
aXQgU2Vtd2FsIChoZSAvIGhpbSkKVGVjaCBMZWFkIC0gTENHLCBWZXJ0aWNhbCBUZWNobm9sb2dp
ZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

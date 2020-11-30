Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 357FC2C914C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 23:41:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61CBF6164D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 22:41:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 56E58617A2; Mon, 30 Nov 2020 22:41:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 769CF61655;
	Mon, 30 Nov 2020 22:40:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 46F1A6087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:40:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 389566164D; Mon, 30 Nov 2020 22:40:31 +0000 (UTC)
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by lists.linaro.org (Postfix) with ESMTPS id E3C2B6087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:40:25 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id f48so4466113otf.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 14:40:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=50JdvhZ42NrkUvTPJM76VPGoZpSHnY0FKQ/KiUd0NKg=;
 b=GsOEIwIfokKMupaDHuMyqx4xigwWijqnl/YGoXcxwKZxb38XoqdNR87390Zh7VqS/1
 4kf7sNMvhh6QQ4P/i1g7IwvDKkMKOvICTgz4PvWyE8HGeDX3GBui/rKKowYrddgs2a0e
 Qa0DUUP7hgFigfxZdZsf4XaDuKznbINo1p/kFRHDO2GvH8W+2we3zPcT9MSwImPfk0P0
 B/292zk9gNFA/Nn9X+ee1rMXui+dcwIZGFADNIoXCyvJQDwh5GuWj+wQKItnezwwPxAN
 NNRr1aJAQ+sqe2a58z0o3Gi4MDLKeSRAx4Zd4C80E46L3FQiWfH+VqNKtKQyt2+v+JxE
 8J6g==
X-Gm-Message-State: AOAM531yx17DknKXbeTVePDwiETWWb6N6jsdUfY4Za9UvbOoX4VP/MvW
 86+IQ2OWjNa7vK0gjv2c+p0s61yjiunznJ1XM08=
X-Google-Smtp-Source: ABdhPJybFFuoCAgH8TDXZA9Ucz4zcLBH+CqhSKIXJXxKqxiielOTa50ygJxobWvmg3HDZpE2zPcFWuvtyL0Utu+x5Xg=
X-Received: by 2002:a9d:4713:: with SMTP id a19mr19235858otf.132.1606776025441; 
 Mon, 30 Nov 2020 14:40:25 -0800 (PST)
MIME-Version: 1.0
References: <20201124193824.1118741-1-lee.jones@linaro.org>
 <20201124193824.1118741-29-lee.jones@linaro.org>
In-Reply-To: <20201124193824.1118741-29-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 30 Nov 2020 17:40:14 -0500
Message-ID: <CADnq5_MD6fpoQCvWYiXbhvCCwGKfJobUXfXLkTRo+pZN3XJViA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 28/40] drm/amd/amdgpu/gfx_v10_0: Make
 local function 'gfx_v10_0_rlc_stop()' static
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

T24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMjo0NSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jOjUw
MDg6Njogd2FybmluZzogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhnZnhfdjEwXzBfcmxj
X3N0b3DigJkgWy1XbWlzc2luZy1wcm90b3R5cGVzXQo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxl
eGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4K
PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
PiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGll
ZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dm
eF92MTBfMC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhf
djEwXzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92MTBfMC5jCj4gaW5kZXgg
ZDQ3NjBmNGUyNjlhMS4uOWViODg2YWU1YTM1ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9nZnhfdjEwXzAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2dmeF92MTBfMC5jCj4gQEAgLTUwMDUsNyArNTAwNSw3IEBAIHN0YXRpYyBpbnQgZ2Z4X3Yx
MF8wX2luaXRfY3NiKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KQo+ICAgICAgICAgcmV0dXJu
IDA7Cj4gIH0KPgo+IC12b2lkIGdmeF92MTBfMF9ybGNfc3RvcChzdHJ1Y3QgYW1kZ3B1X2Rldmlj
ZSAqYWRldikKPiArc3RhdGljIHZvaWQgZ2Z4X3YxMF8wX3JsY19zdG9wKHN0cnVjdCBhbWRncHVf
ZGV2aWNlICphZGV2KQo+ICB7Cj4gICAgICAgICB1MzIgdG1wID0gUlJFRzMyX1NPQzE1KEdDLCAw
LCBtbVJMQ19DTlRMKTsKPgo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK

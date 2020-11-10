Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3722AE423
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Nov 2020 00:34:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 227FB665EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:34:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1523E665FA; Tue, 10 Nov 2020 23:34:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07DBF665EE;
	Tue, 10 Nov 2020 23:34:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A72966192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:34:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9A4EB665EE; Tue, 10 Nov 2020 23:34:09 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 7C1B16192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 23:34:08 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id k2so346109wrx.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 15:34:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gZj8Bm71tJcSxjRihZFAmVL0neWjtvcosDTRkeYcBUg=;
 b=nd9r/MpACNQy1kMgfWZ4DzZgjei0uApbjpBTlyVZl4Z9PeMOSp5woCx/Fqowfhx1Z7
 Q07Xk4WdCmNUv5pVrdJj0pNcUKJ5UkbKhD4CLvwMEMHz//21DrOuYnS1MpwJHN7gzTsu
 Q0wgk2sjRImjsRXJY7KHxuyUC7gxxgF5DUriinikIOU0ZA2xnvj+EL4lBy35zGRYNSDq
 mumwD5/3YF1zsP6mOIi68HpHOKrcl+Xi+vdnx5CDe4jePQ1NcjG/2dx+udNGmBQKtMFC
 oRLLjo69EvDEREEFaJd7vSzRsrN2FaAsdF6y2u5EfsRw2TdpdBJqwPCGxh0ob/LmCqWn
 GHVg==
X-Gm-Message-State: AOAM530EXAFBD2FLvABukZQzcTLuOFYZP5dqG1LMYa1GzRdByTqFzX8v
 +Sg1OY6qnV4sx4UtRr0pvCFMhhtsyVPGaW1eyas=
X-Google-Smtp-Source: ABdhPJz4u2gyk5XUiRriePPfm6Svh6JwCdua12mAjhsZRb4vezo2M6oG4xGdKIfaOx1lYHehvGfUhF/xc2ndZQ7WarA=
X-Received: by 2002:adf:e9c9:: with SMTP id l9mr28093388wrn.124.1605051247731; 
 Tue, 10 Nov 2020 15:34:07 -0800 (PST)
MIME-Version: 1.0
References: <20201110193112.988999-1-lee.jones@linaro.org>
 <20201110193112.988999-6-lee.jones@linaro.org>
In-Reply-To: <20201110193112.988999-6-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 18:33:55 -0500
Message-ID: <CADnq5_NWwwPKQZi2kZ9pCXxMq4_qq7u_XHQn6fQZmR+8D18LfQ@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 05/30] drm/radeon/cik: Remove set but
	unused variable 'mc_shared_chmap'
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

T24gVHVlLCBOb3YgMTAsIDIwMjAgYXQgMjozMSBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmM6IEluIGZ1bmN0aW9u
IOKAmGNpa19ncHVfaW5pdOKAmToKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYzozMTgw
OjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmG1jX3NoYXJlZF9jaG1hcOKAmSBzZXQgYnV0IG5vdCB1
c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxl
eGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4K
PiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwg
PHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
PiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGll
ZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMg
fCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL2Npay5jIGIvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9jaWsuYwo+IGluZGV4IDQ0OTRmOTEyMmZkOTEuLmI5NGUyZTY3OGYy
NTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9jaWsuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yYWRlb24vY2lrLmMKPiBAQCAtMzE3Nyw3ICszMTc3LDcgQEAgc3RhdGlj
IHZvaWQgY2lrX3NldHVwX3JiKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2LAo+ICBzdGF0aWMg
dm9pZCBjaWtfZ3B1X2luaXQoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpCj4gIHsKPiAgICAg
ICAgIHUzMiBnYl9hZGRyX2NvbmZpZyA9IFJSRUczMihHQl9BRERSX0NPTkZJRyk7Cj4gLSAgICAg
ICB1MzIgbWNfc2hhcmVkX2NobWFwLCBtY19hcmJfcmFtY2ZnOwo+ICsgICAgICAgdTMyIG1jX2Fy
Yl9yYW1jZmc7Cj4gICAgICAgICB1MzIgaGRwX2hvc3RfcGF0aF9jbnRsOwo+ICAgICAgICAgdTMy
IHRtcDsKPiAgICAgICAgIGludCBpLCBqOwo+IEBAIC0zMjcwLDcgKzMyNzAsNyBAQCBzdGF0aWMg
dm9pZCBjaWtfZ3B1X2luaXQoc3RydWN0IHJhZGVvbl9kZXZpY2UgKnJkZXYpCj4KPiAgICAgICAg
IFdSRUczMihCSUZfRkJfRU4sIEZCX1JFQURfRU4gfCBGQl9XUklURV9FTik7Cj4KPiAtICAgICAg
IG1jX3NoYXJlZF9jaG1hcCA9IFJSRUczMihNQ19TSEFSRURfQ0hNQVApOwo+ICsgICAgICAgUlJF
RzMyKE1DX1NIQVJFRF9DSE1BUCk7Cj4gICAgICAgICBtY19hcmJfcmFtY2ZnID0gUlJFRzMyKE1D
X0FSQl9SQU1DRkcpOwo+Cj4gICAgICAgICByZGV2LT5jb25maWcuY2lrLm51bV90aWxlX3BpcGVz
ID0gcmRldi0+Y29uZmlnLmNpay5tYXhfdGlsZV9waXBlczsKPiAtLQo+IDIuMjUuMQo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwg
bWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

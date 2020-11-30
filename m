Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA562C90D4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 23:19:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF6BD6087F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Nov 2020 22:19:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E147E61725; Mon, 30 Nov 2020 22:19:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A67396164D;
	Mon, 30 Nov 2020 22:18:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AB0876087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:18:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9C46E6164D; Mon, 30 Nov 2020 22:18:49 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id 665916087F
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 22:18:48 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id f48so4412822otf.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Nov 2020 14:18:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fa2/8Ci4xxzQgPpzblIpuZWOOQWDWwEoKG3A0meA3jA=;
 b=tNiOUi4F93tHJ2gUghZjfXZZPuvT/dvvkOCWt22sO0aufuh/UUrDcCeHpUOYI228Do
 dMJBW/SjN7d/DPI/zXRWG2nfRtVBiYN5t8Bi+9ZuTxZm3u+9rydojsqexa6IaiSgv43U
 gU5JC4mlX+Nuu5pwd+sl5m6up3qMgN+TIFeYSVU2mQ4e5xi6oD++DAFie6ltn21KsBem
 0FkTiSd+9TQt9S/vWy1cU46v18U/QBuq/LxnPxmN5/F0XEsjHT/mup6VxCd9q6BVCJsk
 iO9pSKszT+WNXOIss998ot+X8yRB0QXBORWORzRd4U/qqrviL8W15kuU+l22b6wB59KL
 N/Ng==
X-Gm-Message-State: AOAM532WRCDBo5nLyLgsR9hMrd9Lr6d0kFbXriEfjSmt5bShHR0lkBuL
 ln/ma7MwCBe1MId27H/92n3aGRTtyOoSH3p/nUE=
X-Google-Smtp-Source: ABdhPJyYustfZfZl7BLQkBh0ByhfaBrekSB0Y+9Ti6o+YIXL+LHrA4K+GmLqB4BN7E9+McG+pO2SI0wVg6XdMdk/SRo=
X-Received: by 2002:a9d:5388:: with SMTP id w8mr18736439otg.311.1606774727965; 
 Mon, 30 Nov 2020 14:18:47 -0800 (PST)
MIME-Version: 1.0
References: <20201124193824.1118741-1-lee.jones@linaro.org>
 <20201124193824.1118741-16-lee.jones@linaro.org>
In-Reply-To: <20201124193824.1118741-16-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 30 Nov 2020 17:18:36 -0500
Message-ID: <CADnq5_OfkE7H9dsurRiFb8Y3XkCHwcK0zBMCYnNTz0KK_ihr0Q@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 15/40] drm/amd/amdgpu/gfx_v8_0:
 Functions must follow directly after their headers
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

T24gVHVlLCBOb3YgMjQsIDIwMjAgYXQgMjo0NCBQTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OF8wLmM6MzY5
ODogd2FybmluZzogRXhjZXNzIGZ1bmN0aW9uIHBhcmFtZXRlciAnYWRldicgZGVzY3JpcHRpb24g
aW4gJ0RFRkFVTFRfU0hfTUVNX0JBU0VTJwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVy
LmRldWNoZXJAYW1kLmNvbT4KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzog
RGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWdu
ZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgoKQXBwbGllZC4gIFRo
YW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OF8w
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OF8wLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjhfMC5jCj4gaW5kZXggNWU2ZDE1ZjQ0
NTYwYS4uOWE5MDU1MzFmODM3NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9nZnhfdjhfMC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y4
XzAuYwo+IEBAIC0zNjg3LDYgKzM2ODcsNyBAQCBzdGF0aWMgdm9pZCBnZnhfdjhfMF9zZXR1cF9y
YihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldikKPiAgICAgICAgIG11dGV4X3VubG9jaygmYWRl
di0+Z3JibV9pZHhfbXV0ZXgpOwo+ICB9Cj4KPiArI2RlZmluZSBERUZBVUxUX1NIX01FTV9CQVNF
UyAgICgweDYwMDApCj4gIC8qKgo+ICAgKiBnZnhfdjhfMF9pbml0X2NvbXB1dGVfdm1pZCAtIGdh
cnQgZW5hYmxlCj4gICAqCj4gQEAgLTM2OTUsNyArMzY5Niw2IEBAIHN0YXRpYyB2b2lkIGdmeF92
OF8wX3NldHVwX3JiKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2KQo+ICAgKiBJbml0aWFsaXpl
IGNvbXB1dGUgdm1pZCBzaF9tZW0gcmVnaXN0ZXJzCj4gICAqCj4gICAqLwo+IC0jZGVmaW5lIERF
RkFVTFRfU0hfTUVNX0JBU0VTICAgKDB4NjAwMCkKPiAgc3RhdGljIHZvaWQgZ2Z4X3Y4XzBfaW5p
dF9jb21wdXRlX3ZtaWQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYpCj4gIHsKPiAgICAgICAg
IGludCBpOwo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK

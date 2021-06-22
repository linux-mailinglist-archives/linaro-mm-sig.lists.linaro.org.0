Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 802403B0AC3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 18:55:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61F9C63CA0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 16:55:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E426B631B2; Tue, 22 Jun 2021 16:55:25 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2A226300B;
	Tue, 22 Jun 2021 16:55:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4B080610C5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 16:55:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 48B4361A2A; Tue, 22 Jun 2021 16:55:21 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id 432BA610C5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 16:55:19 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id j2so13942977wrs.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 09:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ofnj3zZOb6lvNBLTmLvRZ/dI7B7Qizs2A5qFqSokZMs=;
 b=PlDcLOVGiA96xcwhvZHPQlAvGMEDcBg9O6ntIM3BCh41iUZ2TDSZtrlqYDU8AaH4SW
 VDIN57zvAe9n66JyTgIQ0zKjFdNj0fhCyqYu1iSpC/6rjhGX2IkMAmVssHzRiuldBTiR
 jhp1mZSCgGKNP26cKAT1jLdUgW5uFs/CRHA+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ofnj3zZOb6lvNBLTmLvRZ/dI7B7Qizs2A5qFqSokZMs=;
 b=crHvtAI5XowWDiIpAxL2kcjqclcAJdVyPpMfs60Co5YR2E4wVT6kGywi2sbmk2yPiV
 +cMn7OxTWgZ4Hgv9e9KmHLJg1mW43V4uPIJSj1m0czcY6hJr4mQnzYMgbOY5orp2MhoV
 UE290ax0F0KQW2s7f8CoKqeASS4APzkyUDMHLwOk5mHUHIAHgDs8AJci3qyPvX//86Sd
 Hv0MmZ5sg419WeDWhn6nrEe9M98z5LK6Woh6ZS8xbO7UBBEkpYB5E/IygZH7qVGW/fpl
 3S0aKrH27VY3uCEQyIlXU70MsGmJ+Ns19pWL+gnUektNitMsU7o+RQp1wVOIX0qRBmGG
 3a6w==
X-Gm-Message-State: AOAM531alFVcPMSYuHFArXF68Mke70b+aPLxyectKoBrTGY2wmr1cC9H
 erJubiunXuy31ctMrJrXly32WA==
X-Google-Smtp-Source: ABdhPJxbm3m5AxBLJ1sntMH1y3g3e+GjtyXkKAUUh9TQfj84Nt1Ek6DhdWavkN+hSBoePr5r0dEEoQ==
X-Received: by 2002:a5d:6c65:: with SMTP id r5mr5875974wrz.339.1624380918343; 
 Tue, 22 Jun 2021 09:55:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:17 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:54:57 +0200
Message-Id: <20210622165511.3169559-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 01/15] dma-resv: Fix kerneldoc
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T3ZlcnNpZ2h0IGZyb20KCmNvbW1pdCA2ZWRiZDZhYmI3ODNkNTRmNmFjNGMzZWQ1Y2Q5ZTUwY2Zm
NmMxNWU5CkF1dGhvcjogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
PgpEYXRlOiAgIE1vbiBNYXkgMTAgMTY6MTQ6MDkgMjAyMSArMDIwMAoKICAgIGRtYS1idWY6IHJl
bmFtZSBhbmQgY2xlYW51cCBkbWFfcmVzdl9nZXRfZXhjbCB2MwoKU2lnbmVkLW9mZi1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBTdW1pdCBTZW13YWwgPHN1
bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4u
a29lbmlnQGFtZC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwotLS0KIGluY2x1ZGUvbGludXgvZG1hLXJlc3YuaCB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJl
c3YuaAppbmRleCA1NjJiODg1Y2Y5YzMuLmUxY2EyMDgwYTFmZiAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaApAQCAtMjEy
LDcgKzIxMiw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfcmVzdl91bmxvY2soc3RydWN0IGRt
YV9yZXN2ICpvYmopCiB9CiAKIC8qKgotICogZG1hX3Jlc3ZfZXhjbHVzaXZlIC0gcmV0dXJuIHRo
ZSBvYmplY3QncyBleGNsdXNpdmUgZmVuY2UKKyAqIGRtYV9yZXN2X2V4Y2xfZmVuY2UgLSByZXR1
cm4gdGhlIG9iamVjdCdzIGV4Y2x1c2l2ZSBmZW5jZQogICogQG9iajogdGhlIHJlc2VydmF0aW9u
IG9iamVjdAogICoKICAqIFJldHVybnMgdGhlIGV4Y2x1c2l2ZSBmZW5jZSAoaWYgYW55KS4gQ2Fs
bGVyIG11c3QgZWl0aGVyIGhvbGQgdGhlIG9iamVjdHMKLS0gCjIuMzIuMC5yYzIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

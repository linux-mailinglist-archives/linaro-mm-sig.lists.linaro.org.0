Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B334979B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 08:41:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34419401C2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 Jan 2022 07:41:34 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id 6AD1D3ED94
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 07:40:50 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id ba4so11802618wrb.4
        for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 23:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=OIMpCxdpOEYcnoEMYTLid8nSDucpIJk7Qs0av1g9rGU=;
        b=Wv6vmwAFRm/BaVWQYECalHzGjxL6WBq8wgOBag2tP/iMbsAsL/4gZEIGOyVn1Rcjgr
         6x4TmZKGuDV0H8OvJ0fVM+Upr/0BEJyhwPtsbccFwHUGSF01C68xUOWB0Ghjfnms0sR7
         X4ubrYWqCJ0jbmuyo1UOrZVgkFqJYcWvo5BeFUuOn18kG8G6fxscUi9/bxgHz5+j/Uzl
         OHfeRSQXsIV+UyE1Y93OK6QqrqjhDlSgQ9oxap1nmW6kC6IVHu5K6uz7v5hytI6irg5c
         DJJeXty1NDcMubyBbcIjaoToervqB4E8hDqne+bJYNzatkMhaCowOCghSPkSQc9YTIlw
         mdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OIMpCxdpOEYcnoEMYTLid8nSDucpIJk7Qs0av1g9rGU=;
        b=oUI1tjaS1qIG21+QQwPkWpqC1mJ9oFB4hblrednGCF/B05COwp39qLEEF1UsMbEEfA
         khggVY5H3J4y5/jseJiNFH1XUk6zuZ0mUkbq3Q/hel2eSXBhPg5w2VOc9gRXTdeKRVHg
         KFm7fxWGpL8ryFi+gQWAs4mDV5SgcwaYkOgE6/oioGx4ntFFSy0B5nqKn7YrjizYLw4v
         sKYOQFwM/x6yOoxeZ7XDtdh5aORIjkdtgA1JYV2Tq1ZnxE/z/dSvj1qgaWf8iMn+PQJu
         AOmhYESGfJhR2RcpPaezbI8qQVzES8A9SC4zK1OgeagcAZi/U7PrxrRFevBlYKmY84Pe
         Yiiw==
X-Gm-Message-State: AOAM533olcmFophA/ItIrAe6VJrZ7oM6vkj5/33EyMp9DrGggBwZDrFE
	LOulGGd0uA8cQ5f5zDNIQbk=
X-Google-Smtp-Source: ABdhPJwicjL4DAH0Upf8PByvfLmXIDl5/1wL7YjXzl4vvkruVIvcrPQL5OoBv3lIQqy8sAq6rRBHwg==
X-Received: by 2002:a5d:6e8b:: with SMTP id k11mr13035578wrz.102.1643010049568;
        Sun, 23 Jan 2022 23:40:49 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id u15sm516370wrs.17.2022.01.23.23.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 23:40:49 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	daniel.vetter@ffwll.ch,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon, 24 Jan 2022 08:40:40 +0100
Message-Id: <20220124074046.4865-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220124074046.4865-1-christian.koenig@amd.com>
References: <20220124074046.4865-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 6B2EZ32HEVBGQWV7SFNEG752KG5X7NKN
X-Message-ID-Hash: 6B2EZ32HEVBGQWV7SFNEG752KG5X7NKN
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/9] dma-buf: Warn about dma_fence_chain container rules v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6B2EZ32HEVBGQWV7SFNEG752KG5X7NKN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2hhaW5pbmcgb2YgZG1hX2ZlbmNlX2NoYWluIG9iamVjdHMgaXMgb25seSBhbGxvd2VkIHRocm91
Z2ggdGhlIHByZXYNCmZlbmNlIGFuZCBub3QgdGhyb3VnaCB0aGUgY29udGFpbmVkIGZlbmNlLg0K
DQpXYXJuIGFib3V0IHRoYXQgd2hlbiB3ZSBjcmVhdGUgYSBkbWFfZmVuY2VfY2hhaW4uDQoNCnYy
OiBmaXggY29tbWVudCBzdHlsZQ0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4NClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhv
bWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMgfCA5ICsrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KaW5kZXggMWI0Y2IzZTVjZWM5Li4w
ODRjNjkyN2I3MzUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWlu
LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KQEAgLTI1NCw1ICsy
NTQsMTQgQEAgdm9pZCBkbWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWlu
ICpjaGFpbiwNCiANCiAJZG1hX2ZlbmNlX2luaXQoJmNoYWluLT5iYXNlLCAmZG1hX2ZlbmNlX2No
YWluX29wcywNCiAJCSAgICAgICAmY2hhaW4tPmxvY2ssIGNvbnRleHQsIHNlcW5vKTsNCisNCisJ
LyoNCisJICogQ2hhaW5pbmcgZG1hX2ZlbmNlX2NoYWluIGNvbnRhaW5lciB0b2dldGhlciBpcyBv
bmx5IGFsbG93ZWQgdGhyb3VnaA0KKwkgKiB0aGUgcHJldiBmZW5jZSBhbmQgbm90IHRocm91Z2gg
dGhlIGNvbnRhaW5lZCBmZW5jZS4NCisJICoNCisJICogVGhlIGNvcnJlY3Qgd2F5IG9mIGhhbmRs
aW5nIHRoaXMgaXMgdG8gZmxhdHRlbiBvdXQgdGhlIGZlbmNlDQorCSAqIHN0cnVjdHVyZSBpbnRv
IGEgZG1hX2ZlbmNlX2FycmF5IGJ5IHRoZSBjYWxsZXIgaW5zdGVhZC4NCisJICovDQorCVdBUk5f
T04oZG1hX2ZlbmNlX2lzX2NoYWluKGZlbmNlKSk7DQogfQ0KIEVYUE9SVF9TWU1CT0woZG1hX2Zl
bmNlX2NoYWluX2luaXQpOw0KLS0gDQoyLjI1LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==

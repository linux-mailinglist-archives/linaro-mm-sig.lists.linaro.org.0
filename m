Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CDA51747F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 18:37:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2AB454805F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 May 2022 16:37:51 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id B5BA64804E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 May 2022 16:37:32 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id 1-20020a05600c248100b00393fbf11a05so10081004wms.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 May 2022 09:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jUPHAg5HbOj5ZN0WpYBsRJzMWzX/NFrcan6CKY2q7Ro=;
        b=K7kMi4HoE2Uh2vRrakSayQJE7aYVhjY9a5nwoadZ3BkU27oHo0Jx+EH8p9F1l+bwgN
         ougnq1m4Szq7vMRihB5chu9Z+ZAhMYo31EpJpgiEkXEFpJhONW9SJpvbLVTAB5PwPVI3
         gbJU1+PbvJ+nchom3hU+DdengngN/5Bt+DlU/qbiM1NW0su5lLTtTrUHRHaesf3vGLSc
         UOhd7WzqMspEwHYiwLE4lMMhu+ZuVlV3H03VpVIVwDWGktR9kADp5GtEhgNmI0j9NHYG
         5rZXer7PFDQr0n34gDRy9kaG7Q1lojECDnwbVLXefC9iMs89qUCExq9fJ6BQxKyi4Or3
         ziwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jUPHAg5HbOj5ZN0WpYBsRJzMWzX/NFrcan6CKY2q7Ro=;
        b=rV+WaREmamDKyisCqao3sHGYpIf+KzYxzgbWOslWFjs4iNjtckOsS1YKxnFcLjnAnc
         ww8NNuz/bYWXV4cIgBX2K43d1lqZzABAZs4FWjzPHVq4c54/NA4DR5sr0oOiHAmL8vdA
         xPiDDQa2xlek6UU/N4VavR0iYsu8eDrEmCjNmHDQmrmkYmOBaMSTC2SXSCCLHxvHXw4a
         hgjh0QN3FUlplfg1dxyhcqNi6d3j4dxAC/4DafTUouOcp40fT1cyNKcBlR3yJ9ESYeuo
         5QUgSi1yP3J8ACmUB1Ch8R0gN5Y4h4+RmATrX+DzYSViCgD8s0yBSd0no54Roh7hHMLs
         s4wQ==
X-Gm-Message-State: AOAM530Cbo7xWCuzO/NNGzhGKhpDn4czbAke+az8XZKQuY3OdNvhHmpU
	44z4LoEnC2jLVw1ElxfOa4c=
X-Google-Smtp-Source: ABdhPJzPFdaPya/zgXl5sjQHQZoAs93P8c4u5VO/8cqCZV7P/ZBXkmF61G4yVvAvs5c6L70nsPZecg==
X-Received: by 2002:a7b:c4d8:0:b0:393:fecd:2718 with SMTP id g24-20020a7bc4d8000000b00393fecd2718mr11612189wmk.23.1651509451818;
        Mon, 02 May 2022 09:37:31 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
        by smtp.gmail.com with ESMTPSA id p14-20020adfaa0e000000b0020c5253d8f6sm7294694wrd.66.2022.05.02.09.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 09:37:31 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	jason@jlekstrand.net,
	daniels@collabora.com,
	skhawaja@google.com,
	maad.aldabagh@amd.com,
	sergemetral@google.com,
	sumit.semwal@linaro.org,
	gustavo@padovan.org,
	Felix.Kuehling@amd.com,
	alexander.deucher@amd.com,
	tzimmermann@suse.de,
	tvrtko.ursulin@linux.intel.com,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Mon,  2 May 2022 18:37:10 +0200
Message-Id: <20220502163722.3957-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220502163722.3957-1-christian.koenig@amd.com>
References: <20220502163722.3957-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: LPIG35BJUTJWWGJUKDCMYMYMABJL63BB
X-Message-ID-Hash: LPIG35BJUTJWWGJUKDCMYMYMABJL63BB
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 03/15] dma-buf: add user fence support to dma_fence_array
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LPIG35BJUTJWWGJUKDCMYMYMABJL63BB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBhbnkgb2YgdGhlIGZlbmNlcyBpbnNpZGUgdGhlIGFycmF5IGlzIGFuIHVzZXIgZmVuY2Ug
dGhlIHdob2xlIGFycmF5DQppcyBjb25zaWRlcmVkIHRvIGJlIGFuIHVzZXIgZmVuY2UgYXMgd2Vs
bC4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgOSArKysr
KysrLS0NCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0K
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQppbmRleCA1YzhhNzA4NDU3N2IuLmRlMTk2YjA3
ZDM2ZCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQpAQCAtMTg5LDggKzE4OSwxMyBA
QCBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICpkbWFfZmVuY2VfYXJyYXlfY3JlYXRlKGludCBudW1f
ZmVuY2VzLA0KIAkgKiBFbmZvcmNlIHRoaXMgaGVyZSBieSBjaGVja2luZyB0aGF0IHdlIGRvbid0
IGNyZWF0ZSBhIGRtYV9mZW5jZV9hcnJheQ0KIAkgKiB3aXRoIGFueSBjb250YWluZXIgaW5zaWRl
Lg0KIAkgKi8NCi0Jd2hpbGUgKG51bV9mZW5jZXMtLSkNCi0JCVdBUk5fT04oZG1hX2ZlbmNlX2lz
X2NvbnRhaW5lcihmZW5jZXNbbnVtX2ZlbmNlc10pKTsNCisJd2hpbGUgKG51bV9mZW5jZXMtLSkg
ew0KKwkJc3RydWN0IGRtYV9mZW5jZSAqZiA9IGZlbmNlc1tudW1fZmVuY2VzXTsNCisNCisJCVdB
Uk5fT04oZG1hX2ZlbmNlX2lzX2NvbnRhaW5lcihmKSk7DQorCQlpZiAodGVzdF9iaXQoRE1BX0ZF
TkNFX0ZMQUdfVVNFUiwgJmYtPmZsYWdzKSkNCisJCQlzZXRfYml0KERNQV9GRU5DRV9GTEFHX1VT
RVIsICZhcnJheS0+YmFzZS5mbGFncyk7DQorCX0NCiANCiAJcmV0dXJuIGFycmF5Ow0KIH0NCi0t
IA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=

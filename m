Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC5C30044F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jan 2021 14:37:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7143866754
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 Jan 2021 13:37:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6233D66753; Fri, 22 Jan 2021 13:37:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3C4C86674E;
	Fri, 22 Jan 2021 13:36:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3CB136674B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jan 2021 13:36:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2E98F6674E; Fri, 22 Jan 2021 13:36:33 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by lists.linaro.org (Postfix) with ESMTPS id 865E76674B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jan 2021 13:36:31 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id v184so4371915wma.1
 for <linaro-mm-sig@lists.linaro.org>; Fri, 22 Jan 2021 05:36:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=edG1bcKl/JltMmw8l3x2znGINV2sLZxwkYJ8IRqXyp4=;
 b=TGHKi+qz69jrh6Kzb30iecWTTuwfpSI5zH/FzruAvtzgDoyHyyR8LAE42meTRMpTP7
 0+q3Qj8wEG10Gs8S31fXidrc0OPrbdtF74Dk0tBPqVipWlGK9KTcwfxUPcdis9CoV79A
 Joo6htgBpZWVWO0V1ZDd7qEDe07lP6Kri9qy49qTGDqsnyBtkl0VomZKnLwxAciQL72Y
 IM+PWtj9WHP7vbUFibkKiGLmc2nOIfAyuwM0GSYbq4Gqb4AKyODWLRmvojc54KRIWLO2
 rnb91DRSL7OHYxoHmkRncTt7GHawA2HlYGu3SsSk8wa2IffAE9R/k3sYecTuU/4WkaZx
 m0Xw==
X-Gm-Message-State: AOAM532hnzuN8EiJqwo8uxnKchLnrjmouZoo6CQLbpA8GUBDH+ySh4zJ
 kKseZMIOsViRPYoX66PDJipN7Q==
X-Google-Smtp-Source: ABdhPJyqUays+vT7bQV8b2GQBF2WkY4wYp/uur4k09VBD0DwleCxtfjPL3RB07HyZym+ymor5fJfww==
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr4119720wmj.61.1611322590741; 
 Fri, 22 Jan 2021 05:36:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i131sm10939005wmi.25.2021.01.22.05.36.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jan 2021 05:36:30 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 22 Jan 2021 14:36:23 +0100
Message-Id: <20210122133624.1751802-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] drm/todo: Add entry for moving to
	dma_resv_lock
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

UmVxdWVzdGVkIGJ5IFRob21hcy4gSSB0aGluayBpdCBqdXN0aWZpZXMgYSBuZXcgbGV2ZWwsIHNp
bmNlIEkgdHJpZWQKdG8gbWFrZSBzb21lIGZvcndhcmQgcHJvZ3Jlc3Mgb24gdGhpcyBsYXN0IHN1
bW1lciwgYW5kIGdhdmUgdXAgKGZvcgpub3cpLiBUaGlzIGlzIHZlcnkgdHJpY2t5LgoKU2lnbmVk
LW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+CkNjOiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogTWF4
aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+CkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+CkNj
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0
LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwotLS0KIERvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0IHwg
MTkgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdCBiL0RvY3VtZW50YXRpb24v
Z3B1L3RvZG8ucnN0CmluZGV4IGRlYTkwODJjMGU1Zi4uZjg3MmQzZDMzMjE4IDEwMDY0NAotLS0g
YS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2Rv
LnJzdApAQCAtMjMsNiArMjMsOSBAQCBBZHZhbmNlZDogVHJpY2t5IHRhc2tzIHRoYXQgbmVlZCBm
YWlybHkgZ29vZCB1bmRlcnN0YW5kaW5nIG9mIHRoZSBEUk0gc3Vic3lzdGVtCiBhbmQgZ3JhcGhp
Y3MgdG9waWNzLiBHZW5lcmFsbHkgbmVlZCB0aGUgcmVsZXZhbnQgaGFyZHdhcmUgZm9yIGRldmVs
b3BtZW50IGFuZAogdGVzdGluZy4KIAorRXhwZXJ0OiBPbmx5IGF0dGVtcHQgdGhlc2UgaWYgeW91
J3ZlIHN1Y2Nlc3NmdWxseSBjb21wbGV0ZWQgc29tZSB0cmlja3kKK3JlZmFjdG9yaW5ncyBhbHJl
YWR5IGFuZCBhcmUgYW4gZXhwZXJ0IGluIHRoZSBzcGVjaWZpYyBhcmVhCisKIFN1YnN5c3RlbS13
aWRlIHJlZmFjdG9yaW5ncwogPT09PT09PT09PT09PT09PT09PT09PT09PT09CiAKQEAgLTE2OCw2
ICsxNzEsMjIgQEAgQ29udGFjdDogRGFuaWVsIFZldHRlciwgcmVzcGVjdGl2ZSBkcml2ZXIgbWFp
bnRhaW5lcnMKIAogTGV2ZWw6IEFkdmFuY2VkCiAKK01vdmUgQnVmZmVyIE9iamVjdCBMb2NraW5n
IHRvIGRtYV9yZXN2X2xvY2soKQorLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCisKK01hbnkgZHJpdmVycyBoYXZlIHRoZWlyIG93biBwZXItb2JqZWN0IGxvY2tp
bmcgc2NoZW1lLCB1c3VhbGx5IHVzaW5nCittdXRleF9sb2NrKCkuIFRoaXMgY2F1c2VzIGFsbCBr
aW5kcyBvZiB0cm91YmxlIGZvciBidWZmZXIgc2hhcmluZywgc2luY2UKK2RlcGVuZGluZyB3aGlj
aCBkcml2ZXIgaXMgdGhlIGV4cG9ydGVyIGFuZCBpbXBvcnRlciwgdGhlIGxvY2tpbmcgaGllcmFy
Y2h5IGlzCityZXZlcnNlZC4KKworVG8gc29sdmUgdGhpcyB3ZSBuZWVkIG9uZSBzdGFuZGFyZCBw
ZXItb2JqZWN0IGxvY2tpbmcgbWVjaGFuaXNtLCB3aGljaCBpcworZG1hX3Jlc3ZfbG9jaygpLiBU
aGlzIGxvY2sgbmVlZHMgdG8gYmUgY2FsbGVkIGFzIHRoZSBvdXRlcm1vc3QgbG9jaywgd2l0aCBh
bGwKK290aGVyIGRyaXZlciBzcGVjaWZpYyBwZXItb2JqZWN0IGxvY2tzIHJlbW92ZWQuIFRoZSBw
cm9ibGVtIGlzIHRoYSByb2xsaW5nIG91dAordGhlIGFjdHVhbCBjaGFuZ2UgdG8gdGhlIGxvY2tp
bmcgY29udHJhY3QgaXMgYSBmbGFnIGRheSwgZHVlIHRvIHN0cnVjdCBkbWFfYnVmCitidWZmZXIg
c2hhcmluZy4KKworTGV2ZWw6IEV4cGVydAorCiBDb252ZXJ0IGxvZ2dpbmcgdG8gZHJtXyogZnVu
Y3Rpb25zIHdpdGggZHJtX2RldmljZSBwYXJhbWF0ZXIKIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogCi0tIAoyLjMwLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

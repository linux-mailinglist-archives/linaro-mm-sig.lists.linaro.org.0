Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C342A95BD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 12:48:42 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CB3860F0D
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  6 Nov 2020 11:48:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1B76A622F6; Fri,  6 Nov 2020 11:48:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27DCC665A5;
	Fri,  6 Nov 2020 11:48:14 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A991A60F0D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 11:48:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 91E42665A5; Fri,  6 Nov 2020 11:48:11 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by lists.linaro.org (Postfix) with ESMTPS id 98BFA60F0D
 for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Nov 2020 11:48:10 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id y15so795981ede.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 06 Nov 2020 03:48:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+cA+j1sGPJcErb4HuM5DHU6NQftn7SZ7mkcmrGBBfKQ=;
 b=Tavzn6+jLX51Vkqvx9dVf83LJlLdTAIa88Z+tHDgvdMjF8wqJm4ovXXgbkFxtQ1ZCC
 MP97iq4gEhk1n4syObszNI9iJpmyrAJ0t0uHqapii8BgCC7Pzme1MbzuD8Nacqrcd4sq
 W8EamEk5fOVXV2A7afu1u5TBuGRuNJsUr3e8wUJ/pP71wccxNIP5DY4OaI7FEoli0Grt
 X/pFQRaIL2auLRb70QQGiO2ZBfS8/2StHqAFO/+NjpyStGTtQaBUKKNLyA+YO9yvnBpD
 HBZ4uWczt8TDUfiOv+gPnVNrLnjMYLTBBKQp/Id3diKk/b/3LJJDBEHSoWPd7cVRqk0p
 B3aQ==
X-Gm-Message-State: AOAM530pfuoocNgJUD9gL0iifMRILM5RI+GHRQZoRqhHEW8YkNWe2bQm
 MIfgAHno4QK7YxtXky4ePNs=
X-Google-Smtp-Source: ABdhPJx1bUWAzpYpM+p3n6y8K2H67wUyqPozJYGi+fMszCHeVhpx8tb/VetBGJ/LvgazVDb1im3KFQ==
X-Received: by 2002:a50:8c61:: with SMTP id p88mr1611814edp.257.1604663289749; 
 Fri, 06 Nov 2020 03:48:09 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c066:c9fc:f8c2:d50b])
 by smtp.gmail.com with ESMTPSA id j8sm875933edk.79.2020.11.06.03.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Nov 2020 03:48:09 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: akpm@linux-foundation.org
Date: Fri,  6 Nov 2020 12:48:04 +0100
Message-Id: <20201106114806.46015-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] cleanup a fix and add the vma_set_file function
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

SGkgQW5kcmV3LAoKY2FuIEkgZ2V0IHlvdSBBY2tlZC1ieSB0byBtZXJnZSB0aGlzIGNsZWFudXAg
dGhyb3VnaCB0aGUgZHJtLW1pc2MtbmV4dCBicmFuY2g/IFRoZSBhZmZlY3RlZCBkcml2ZXJzIGFy
ZSBtb3N0bHkgZnJvbSB0aGUgRFJNIHN1YnN5c3RlbS4KClRoZSBmaXggZm9yIHRoZSBvdGhlciBw
cm9ibGVtIHlvdSBwb2ludGVkIG91dCBpbiBtbWFwX3JlZ2lvbigpIGhhcyBhbHJlYWR5IHNob3du
IHVwIGluIHRoYXQgYnJhbmNoLgoKVGhhbmtzIGluIGFkdmFuY2UsCkNocmlzdGlhbi4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

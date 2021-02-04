Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1854E3100BF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  5 Feb 2021 00:31:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3384266754
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 23:31:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1B24D6675F; Thu,  4 Feb 2021 23:31:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4CFDF66758;
	Thu,  4 Feb 2021 23:30:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7621D60B63
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 23:30:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 61A3566760; Thu,  4 Feb 2021 23:30:43 +0000 (UTC)
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by lists.linaro.org (Postfix) with ESMTPS id 263EF60B63
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 23:30:13 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id b20so2589549qkg.0
 for <linaro-mm-sig@lists.linaro.org>; Thu, 04 Feb 2021 15:30:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
 :references:subject:from:cc;
 bh=+DMZQSm/uaEUXJw9EFN7NIYygzQ6mIPslbKoTBQUvsQ=;
 b=ZTb7FxxffVS4oobmkji8/prLP4T7JQsLps3JAhm+proTd9jCfpONBOdFdSBnF4Xppr
 4uYfFkKvxY0XC1erXGhYn+hNggDv2p9Fwd1TPHjNYzM227Kzik9J1AltwsusZ29Bg7XF
 w8lE0YhMACzTD7h4ZKMtNSo3rN2cZxcdo8kYudxlltntHvHTmO7mIAJ2cPXVPRlUsNqg
 UcBiJ/68w5I9UAGaFH2mhXRAM7v6bGAKddxUATbvIAKB5MYu36KkbzsVXzUIVq/Ehpjy
 rkHxcGmf5hNBqfqrRxVwXNu/eirI+5KhjrztC84zb1+o9lyo34YbtmASaIz+caDlFPnq
 NLCQ==
X-Gm-Message-State: AOAM530AnSpazdC5T9j4b+a6Raw9XiKKlNiZR0YuOT8NOjdzTetGtYBa
 1Ak5cda3skNHjRuhgLDkH7aScz0h+DDZGhiEfw==
X-Google-Smtp-Source: ABdhPJx3kg9I/fA5bBDYRFvfPdVTeyCfD6xE3qxRlCYQfUGKmYYfcWiSsJ3nZEdsX8iZC/R5fjsrlL6fZPjSx22Y7g==
X-Received: from kaleshsingh.c.googlers.com
 ([fda3:e722:ac3:10:14:4d90:c0a8:2145])
 (user=kaleshsingh job=sendgmr) by 2002:ad4:5be9:: with SMTP id
 k9mr1715632qvc.18.1612481412377; Thu, 04 Feb 2021 15:30:12 -0800 (PST)
Date: Thu,  4 Feb 2021 23:28:50 +0000
In-Reply-To: <20210204232854.451676-1-kaleshsingh@google.com>
Message-Id: <20210204232854.451676-2-kaleshsingh@google.com>
Mime-Version: 1.0
References: <20210204232854.451676-1-kaleshsingh@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
From: Kalesh Singh <kaleshsingh@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, Andrei Vagin <avagin@gmail.com>,
 Kalesh Singh <kaleshsingh@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, jeffv@google.com,
 kernel-team@android.com, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-media@vger.kernel.org, keescook@chromium.org, jannh@google.com,
 linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org,
 Bernd Edlinger <bernd.edlinger@hotmail.de>, surenb@google.com,
 Alexey Gladkov <gladkov.alexey@gmail.com>, linux-kernel@vger.kernel.org,
 minchan@kernel.org, Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Subject: [Linaro-mm-sig] [PATCH v2 2/2] dmabuf: Add dmabuf inode number to
	/proc/*/fdinfo
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

SWYgYSBGRCByZWZlcnMgdG8gYSBETUEgYnVmZmVyIGFkZCB0aGUgRE1BIGJ1ZmZlciBpbm9kZSBu
dW1iZXIgdG8KL3Byb2MvPHBpZD4vZmRpbmZvLzxGRD4gYW5kIC9wcm9jLzxwaWQ+L3Rhc2svPHRp
ZD4vZmRpbmRvLzxGRD4uCgpUaGUgZG1hYnVmIGlub2RlIG51bWJlciBhbGxvd3MgdXNlcnNwYWNl
IHRvIHVuaXF1ZWx5IGlkZW50aWZ5IHRoZSBidWZmZXIKYW5kIGF2b2lkcyBhIGRlcGVuZGVuY3kg
b24gL3Byb2MvPHBpZD4vZmQvKiB3aGVuIGFjY291bnRpbmcgcGVyLXByb2Nlc3MKRE1BIGJ1ZmZl
ciBzaXplcy4KClNpZ25lZC1vZmYtYnk6IEthbGVzaCBTaW5naCA8a2FsZXNoc2luZ2hAZ29vZ2xl
LmNvbT4KLS0tCgpDaGFuZ2VzIGluIHYyOiAKICAtIFVwZGF0ZSBwYXRjaCBkZXNjaXB0aW9uCgog
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggOWFkNjM5N2FhYTk3Li5kODY5MDk5ZWRlODMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYwpAQCAtNDE0LDYgKzQxNCw3IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGlu
Zm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKIHsKIAlzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmID0gZmlsZS0+cHJpdmF0ZV9kYXRhOwogCisJc2VxX3ByaW50ZihtLCAiZG1h
YnVmX2lub2RlX25vOlx0JWx1XG4iLCBmaWxlX2lub2RlKGZpbGUpLT5pX2lubyk7CiAJc2VxX3By
aW50ZihtLCAic2l6ZTpcdCV6dVxuIiwgZG1hYnVmLT5zaXplKTsKIAkvKiBEb24ndCBjb3VudCB0
aGUgdGVtcG9yYXJ5IHJlZmVyZW5jZSB0YWtlbiBpbnNpZGUgcHJvY2ZzIHNlcV9zaG93ICovCiAJ
c2VxX3ByaW50ZihtLCAiY291bnQ6XHQlbGRcbiIsIGZpbGVfY291bnQoZG1hYnVmLT5maWxlKSAt
IDEpOwotLSAKMi4zMC4wLjM2NS5nMDJiYzY5Mzc4OS1nb29nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8899E307DDB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:26:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A040F61816
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 18:26:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 951C866760; Thu, 28 Jan 2021 18:26:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D15AD6171B;
	Thu, 28 Jan 2021 18:25:26 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AD3A06171B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:25:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9A28A66764; Thu, 28 Jan 2021 18:25:22 +0000 (UTC)
Received: from mail-qv1-f74.google.com (mail-qv1-f74.google.com
 [209.85.219.74])
 by lists.linaro.org (Postfix) with ESMTPS id 0A9A76171B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:24:54 +0000 (UTC)
Received: by mail-qv1-f74.google.com with SMTP id dh16so4056975qvb.11
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 10:24:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
 :references:subject:from:cc;
 bh=WO1Ps+Nvd/JhtfCCjwBjp1ZIkFI1epnqyV7iKoI3o6M=;
 b=qmYYdIrFD+bUIRZFiYZFkjJBzuJTAJvRBU2MbM0vuS4iERWlqsM50zmHo4sTpcqKNf
 HFcCMyjceemdgY57sZlnG6zk4RhL2BHRtDFZO6X0Xneit11kAZhu3RHEUhxlI12OkTKl
 2KBrhSL8wIwtPA77QF6niN8JNtCwB97XDQTXbfu/s2qljvD/IlzVe7OFbQw+XPQJMbP3
 UB+ekbllTT25oGy5qbTfAM8ewxjngUWuOoKKLXZAueHmhCLySCgmgy9CbhnIUUp1pAaB
 esbcbHEJT5pdKRE9qsZVQ8zN4GiAxqZzV8zvkxwP8bSnCjzFwFLLG/tIcdGlerR7Zg0d
 ih/Q==
X-Gm-Message-State: AOAM530+6mxbzEssppjd9EWHNX5oNZdK+ux07Z/AeIvWPliEmJzsbh0M
 k7+nXCYLCcB0zL0HQ/wKw8sGiuGMjBeKTMVd/g==
X-Google-Smtp-Source: ABdhPJxHCqtX2ZHgnqn1x3DYKD86aE5WR934LTPVMRYPiTVg9KKNFMi3ScBW4vQ0zl65Lu8rIgzHGPhMjlBRyKwGrA==
X-Received: from kaleshsingh.c.googlers.com
 ([fda3:e722:ac3:10:14:4d90:c0a8:2145])
 (user=kaleshsingh job=sendgmr) by 2002:ad4:4b6d:: with SMTP id
 m13mr614841qvx.56.1611858293408; Thu, 28 Jan 2021 10:24:53 -0800 (PST)
Date: Thu, 28 Jan 2021 18:24:31 +0000
In-Reply-To: <20210128182432.2216573-1-kaleshsingh@google.com>
Message-Id: <20210128182432.2216573-3-kaleshsingh@google.com>
Mime-Version: 1.0
References: <20210128182432.2216573-1-kaleshsingh@google.com>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
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
 Vlastimil Babka <vbabka@suse.cz>, Alexey Gladkov <gladkov.alexey@gmail.com>,
 linux-kernel@vger.kernel.org, minchan@kernel.org,
 Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Subject: [Linaro-mm-sig] [PATCH 2/2] dmabuf: Add dmabuf inode no to fdinfo
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

VGhlIGRtYWJ1ZiBpbm9kZSBudW1iZXIgYWxsb3dzIHVzZXJzcGFjZSB0byB1bmlxdWVseSBpZGVu
dGlmeSB0aGUgYnVmZmVyCmFuZCBhdm9pZHMgYSBkZXBlbmRlbmN5IG9uIC9wcm9jLzxwaWQ+L2Zk
Lyogd2hlbiBhY2NvdW50aW5nIHBlci1wcm9jZXNzCkRNQSBidWZmZXIgc2l6ZXMuCgpTaWduZWQt
b2ZmLWJ5OiBLYWxlc2ggU2luZ2ggPGthbGVzaHNpbmdoQGdvb2dsZS5jb20+Ci0tLQogZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMKaW5kZXggOWFkNjM5N2FhYTk3Li5kODY5MDk5ZWRlODMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YwpAQCAtNDE0LDYgKzQxNCw3IEBAIHN0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3Ry
dWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKIHsKIAlzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmID0gZmlsZS0+cHJpdmF0ZV9kYXRhOwogCisJc2VxX3ByaW50ZihtLCAiZG1hYnVmX2lu
b2RlX25vOlx0JWx1XG4iLCBmaWxlX2lub2RlKGZpbGUpLT5pX2lubyk7CiAJc2VxX3ByaW50Ziht
LCAic2l6ZTpcdCV6dVxuIiwgZG1hYnVmLT5zaXplKTsKIAkvKiBEb24ndCBjb3VudCB0aGUgdGVt
cG9yYXJ5IHJlZmVyZW5jZSB0YWtlbiBpbnNpZGUgcHJvY2ZzIHNlcV9zaG93ICovCiAJc2VxX3By
aW50ZihtLCAiY291bnQ6XHQlbGRcbiIsIGZpbGVfY291bnQoZG1hYnVmLT5maWxlKSAtIDEpOwot
LSAKMi4zMC4wLjM2NS5nMDJiYzY5Mzc4OS1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=

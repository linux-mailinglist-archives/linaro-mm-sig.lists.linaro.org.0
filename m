Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DACC248505
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:45:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 909F760E39
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:45:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7DA8865FD7; Tue, 18 Aug 2020 12:45:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3462D66628;
	Tue, 18 Aug 2020 12:32:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4F9CE606A3
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 14:47:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3A7A261513; Mon,  3 Aug 2020 14:47:45 +0000 (UTC)
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by lists.linaro.org (Postfix) with ESMTPS id 4C9ED606A3
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 14:47:44 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id j7so26338434qki.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Aug 2020 07:47:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=jSEcpjJOquc529ZwoycPhflNQKRcL97Z3GUPK/MTFhg=;
 b=W0m94IJhPGTr1fP5zBNDTrn3W5pcdRSclB73jC4tS3sw6Mi3GIwobuF8vpZHjd1Onv
 HCmpjZNseLWDfN8HmM363Lb+TUZuJY+IyUjveQmhK5pJ8mCyYkDFQ/z9DEdaEZkFhq5U
 pquHH4uSt46fZZgl/5X8GXXRVze3wWpyc4FldrHvooZBRWl8b3YoyMii9mveAAP+0pPR
 MSfeHVpZx901VWyjSUThj50kkB/QiY9u9vvmC/aQIjly69z8+hdywQr7Kv2QOPGJdEDi
 iW+SJrqUf8nPYKSiQj4aIZRxyaFr5F3cEdYM+ed7V46m+ltPu4RqJgVvCIphFb+tOXK2
 j60A==
X-Gm-Message-State: AOAM532KS45ZS4X/5pKIC65JkM1RPixhHqFVhyox+MS07HUZIzlv8d9W
 J0jlvcbHg/N3AP3ij7UvG5cjQGeFCsOiYo3DLw==
X-Google-Smtp-Source: ABdhPJw7sHEqkxXBQdZEh6QBRcoghAHfysqJXJXhfAsQDkKtCR//v760mqThiImnXfcrSB5dpdxJ6/pM/TKRNguNpQ==
X-Received: by 2002:ad4:4482:: with SMTP id m2mr15332118qvt.102.1596466063346; 
 Mon, 03 Aug 2020 07:47:43 -0700 (PDT)
Date: Mon,  3 Aug 2020 14:47:17 +0000
Message-Id: <20200803144719.3184138-1-kaleshsingh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
From: Kalesh Singh <kaleshsingh@google.com>
To: Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: linux-doc@vger.kernel.org, kernel-team@android.com,
 Ioannis Ilkos <ilkos@google.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, John Stultz <john.stultz@linaro.org>,
 Kalesh Singh <kaleshsingh@google.com>, linux-fsdevel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 0/2] Per process tracking of dma buffers
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

U2luY2UgZGVidWdmcyBkb2Vzbid0IGhhdmUgc3RhYmxlIGFiaS4gVGhpcyBwYXRjaCBzZXJpZXMg
ZW5hYmxlcyBwZXIKcHJvY2VzcyBhY2NvdW50aW5nIG9mIGRtYSBidWZmZXJzIHVzaW5nIHRyYWNl
IGV2ZW50cy4KCkthbGVzaCBTaW5naCAoMik6CiAgZnM6IEFkZCBmZF9pbnN0YWxsIGZpbGUgb3Bl
cmF0aW9uCiAgZG1hYnVmL3RyYWNpbmc6IEFkZCBkbWEtYnVmIHRyYWNlIGV2ZW50cwoKIERvY3Vt
ZW50YXRpb24vZmlsZXN5c3RlbXMvdmZzLnJzdCB8ICA1ICsrCiBkcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jICAgICAgICAgfCAyOSArKysrKysrKysrKysKIGZzL2ZpbGUuYyAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAzICsrCiBpbmNsdWRlL2xpbnV4L2ZzLmggICAgICAgICAgICAgICAgfCAg
MSArCiBpbmNsdWRlL3RyYWNlL2V2ZW50cy9kbWFfYnVmLmggICAgfCA3NyArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDExNSBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS90cmFjZS9ldmVudHMvZG1hX2J1Zi5oCgotLSAKMi4y
OC4wLjE2My5nNjEwNGNjMmYwYjYtZ29vZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK

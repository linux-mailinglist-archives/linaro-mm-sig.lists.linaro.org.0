Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0C3307DD9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 19:25:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A63AA66760
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Jan 2021 18:25:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8ED5466765; Thu, 28 Jan 2021 18:25:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	MAILING_LIST_MULTI,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 010B06675F;
	Thu, 28 Jan 2021 18:24:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 33F666171B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:24:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 07E726674C; Thu, 28 Jan 2021 18:24:48 +0000 (UTC)
Received: from mail-ua1-f74.google.com (mail-ua1-f74.google.com
 [209.85.222.74])
 by lists.linaro.org (Postfix) with ESMTPS id ED6BE6171B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 18:24:46 +0000 (UTC)
Received: by mail-ua1-f74.google.com with SMTP id c1so1698696uab.4
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Jan 2021 10:24:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :cc:content-transfer-encoding;
 bh=cHIvwUXm0lHuy8rQzrOgn2oz2Aq5uQKCMOMrBcKZwBg=;
 b=W/VWR5eww5XLcS4hecocuMQtMsfgrHr8HNoDfaC0BM6RUVaWx9VUnNBe+MSUQT+Fhr
 PxdWjfRBxDbpI0nFHwdBGgKdsVzIs+h4f7Xqc1xjgOWVTadP9iYy/8Gf5dro5QVD1Nxk
 +Z8UinXpzHv/KTxUiRLUAri9wOmDzVlMVg84cSwVYcaqtbzM+ZUwyqdq70UQXiZ/3gvv
 /BLhOJI8QfBdnOtkYb5MiD5wM+x6aj/dANPkfjDKw2GKWK+dZsh7WyaYbdMSlVeqfSwo
 JCEw4WI6ToeUlXEv24QdL56CKpNM8krvvXIa5uaJnCzcbuZksPCWzg1zr1UCQnoaLMc0
 s+Vw==
X-Gm-Message-State: AOAM532TS+Dg0G6AMqzOUb4iAMCtcnf0mOZVnc8tdxkVphcNhfjXLya6
 bzR6Nyg519MSGOHvs+EvV63EhR7HZc8XUmR46A==
X-Google-Smtp-Source: ABdhPJxjOgT+zASwb9ZYuq0uI6fVz8Lr4Lk+05wuK0BleAbT7nbROSuQIr3xjDt42c7GZUo8Tn1YW1FsSYhCEyIssw==
X-Received: from kaleshsingh.c.googlers.com
 ([fda3:e722:ac3:10:14:4d90:c0a8:2145])
 (user=kaleshsingh job=sendgmr) by 2002:a67:eac2:: with SMTP id
 s2mr963597vso.22.1611858286409; Thu, 28 Jan 2021 10:24:46 -0800 (PST)
Date: Thu, 28 Jan 2021 18:24:29 +0000
Message-Id: <20210128182432.2216573-1-kaleshsingh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
From: Kalesh Singh <kaleshsingh@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, Andrei Vagin <avagin@gmail.com>,
 Kalesh Singh <kaleshsingh@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Michel Lespinasse <walken@google.com>, jeffv@google.com,
 Daniel Jordan <daniel.m.jordan@oracle.com>, kernel-team@android.com,
 Alexey Dobriyan <adobriyan@gmail.com>, linux-media@vger.kernel.org,
 keescook@chromium.org, jannh@google.com, linaro-mm-sig@lists.linaro.org,
 linux-fsdevel@vger.kernel.org, Bernd Edlinger <bernd.edlinger@hotmail.de>,
 surenb@google.com, Alexey Gladkov <gladkov.alexey@gmail.com>,
 linux-kernel@vger.kernel.org, minchan@kernel.org,
 Yafang Shao <laoar.shao@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Subject: [Linaro-mm-sig] [PATCH 0/2] Allow reading process DMA buf stats
	from fdinfo
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

QW5kcm9pZCBjYXB0dXJlcyBwZXItcHJvY2VzcyBzeXN0ZW0gbWVtb3J5IHN0YXRlIHdoZW4gY2Vy
dGFpbiBsb3cgbWVtb3J5CmV2ZW50cyAoZS5nIGEgZm9yZWdyb3VuZCBhcHAga2lsbCkgb2NjdXIs
IHRvIGlkZW50aWZ5IHBvdGVudGlhbCBtZW1vcnkKaG9nZ2Vycy4gSW4gb3JkZXIgdG8gbWVhc3Vy
ZSBob3cgbXVjaCBtZW1vcnkgYSBwcm9jZXNzIGFjdHVhbGx5IGNvbnN1bWVzLAppdCBpcyBuZWNl
c3NhcnkgdG8gaW5jbHVkZSB0aGUgRE1BIGJ1ZmZlciBzaXplcyBmb3IgdGhhdCBwcm9jZXNzIGlu
IHRoZQptZW1vcnkgYWNjb3VudGluZy4gU2luY2UgdGhlIGhhbmRsZSB0byBETUEgYnVmZmVycyBh
cmUgcmF3IEZEcywgaXQgaXMKaW1wb3J0YW50IHRvIGJlIGFibGUgdG8gaWRlbnRpZnkgd2hpY2gg
cHJvY2Vzc2VzIGhhdmUgRkQgcmVmZXJlbmNlcyB0bwphIERNQSBidWZmZXIuCgpDdXJyZW50bHks
IERNQSBidWZmZXIgRkRzIGNhbiBiZSBhY2NvdW50ZWQgdXNpbmcgL3Byb2MvPHBpZD4vZmQvKiBh
bmQKL3Byb2MvPHBpZD4vZmRpbmZvIC0tIGJvdGggYXJlIG9ubHkgcmVhZGFibGUgYnkgdGhlIHBy
b2Nlc3Mgb3duZXIsCmFzIGZvbGxvd3M6CiAgMS4gRG8gYSByZWFkbGluayBvbiBlYWNoIEZELgog
IDIuIElmIHRoZSB0YXJnZXQgcGF0aCBiZWdpbnMgd2l0aCAiL2RtYWJ1ZiIsIHRoZW4gdGhlIEZE
IGlzIGEgZG1hYnVmIEZELgogIDMuIHN0YXQgdGhlIGZpbGUgdG8gZ2V0IHRoZSBkbWFidWYgaW5v
ZGUgbnVtYmVyLgogIDQuIFJlYWQvIHByb2MvPHBpZD4vZmRpbmZvLzxmZD4sIHRvIGdldCB0aGUg
RE1BIGJ1ZmZlciBzaXplLgoKQWNjZXNzaW5nIG90aGVyIHByb2Nlc3Nlc+KAmSBmZGluZm8gcmVx
dWlyZXMgcm9vdCBwcml2aWxlZ2VzLiBUaGlzIGxpbWl0cwp0aGUgdXNlIG9mIHRoZSBpbnRlcmZh
Y2UgdG8gZGVidWdnaW5nIGVudmlyb25tZW50cyBhbmQgaXMgbm90IHN1aXRhYmxlCmZvciBwcm9k
dWN0aW9uIGJ1aWxkcy4gIEdyYW50aW5nIHJvb3QgcHJpdmlsZWdlcyBldmVuIHRvIGEgc3lzdGVt
IHByb2Nlc3MKaW5jcmVhc2VzIHRoZSBhdHRhY2sgc3VyZmFjZSBhbmQgaXMgaGlnaGx5IHVuZGVz
aXJhYmxlLgoKVGhpcyBzZXJpZXMgcHJvcG9zZXMgbWFraW5nIHRoZSByZXF1aXJlbWVudCB0byBy
ZWFkIGZkaW5mbyBsZXNzIHN0cmljdAp3aXRoIFBUUkFDRV9NT0RFX1JFQUQuCgoKS2FsZXNoIFNp
bmdoICgyKToKICBwcm9jZnM6IEFsbG93IHJlYWRpbmcgZmRpbmZvIHdpdGggUFRSQUNFX01PREVf
UkVBRAogIGRtYWJ1ZjogQWRkIGRtYWJ1ZiBpbm9kZSBubyB0byBmZGluZm8KCiBkcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jIHwgIDEgKwogZnMvcHJvYy9iYXNlLmMgICAgICAgICAgICB8ICA0ICsr
LS0KIGZzL3Byb2MvZmQuYyAgICAgICAgICAgICAgfCAxNSArKysrKysrKysrKysrKy0KIDMgZmls
ZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCi0tIAoyLjMwLjAu
MzY1LmcwMmJjNjkzNzg5LWdvb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==

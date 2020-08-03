Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 027CF23AA8F
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Aug 2020 18:35:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 30C4460E91
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Aug 2020 16:35:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2014361861; Mon,  3 Aug 2020 16:35:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5BC8161655;
	Mon,  3 Aug 2020 16:34:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4E46C60E91
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:34:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 41A6261655; Mon,  3 Aug 2020 16:34:49 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by lists.linaro.org (Postfix) with ESMTPS id 3F26E60E91
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 16:34:48 +0000 (UTC)
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k2dPx-0003zS-JQ; Mon, 03 Aug 2020 16:34:29 +0000
Date: Mon, 3 Aug 2020 17:34:29 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Kalesh Singh <kaleshsingh@google.com>
Message-ID: <20200803163429.GA15200@infradead.org>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-2-kaleshsingh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200803144719.3184138-2-kaleshsingh@google.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-doc@vger.kernel.org, kernel-team@android.com,
 dri-devel@lists.freedesktop.org, Jonathan Corbet <corbet@lwn.net>,
 Ioannis Ilkos <ilkos@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, linaro-mm-sig@lists.linaro.org,
 Hridya Valsaraju <hridya@google.com>, Ingo Molnar <mingo@redhat.com>,
 John Stultz <john.stultz@linaro.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] fs: Add fd_install file operation
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

T24gTW9uLCBBdWcgMDMsIDIwMjAgYXQgMDI6NDc6MThQTSArMDAwMCwgS2FsZXNoIFNpbmdoIHdy
b3RlOgo+IFByb3ZpZGVzIGEgcGVyIHByb2Nlc3MgaG9vayBmb3IgdGhlIGFjcXVpc2l0aW9uIG9m
IGZpbGUgZGVzY3JpcHRvcnMsCj4gZGVzcGl0ZSB0aGUgbWV0aG9kIHVzZWQgdG8gb2J0YWluIHRo
ZSBkZXNjcmlwdG9yLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEthbGVzaCBTaW5naCA8a2FsZXNoc2lu
Z2hAZ29vZ2xlLmNvbT4KCkkgc3Ryb25nbHkgZGlzYWdyZWUgd2l0aCB0aGlzLiAgVGhlIGZpbGUg
b3BlcmF0aW9uIGhhcyBubyBidXNpbmVzcwpob29raW5nIGludG8gaW5zdGFsbGluZyB0aGUgZmQu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczov
L2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==

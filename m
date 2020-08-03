Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EE424854D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:51:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3EF5460EFF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:51:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 330A4665AA; Tue, 18 Aug 2020 12:51:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FE66666F3;
	Tue, 18 Aug 2020 12:32:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B9BB560785
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 22:19:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A2DD461627; Mon,  3 Aug 2020 22:19:23 +0000 (UTC)
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by lists.linaro.org (Postfix) with ESMTPS id 9D35160785
 for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Aug 2020 22:19:22 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1k2inG-008hFR-8F; Mon, 03 Aug 2020 22:18:54 +0000
Date: Mon, 3 Aug 2020 23:18:54 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Kalesh Singh <kaleshsingh@google.com>
Message-ID: <20200803221854.GH1236603@ZenIV.linux.org.uk>
References: <20200803144719.3184138-1-kaleshsingh@google.com>
 <20200803144719.3184138-2-kaleshsingh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200803144719.3184138-2-kaleshsingh@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: linux-doc@vger.kernel.org, kernel-team@android.com,
 Jonathan Corbet <corbet@lwn.net>, Ioannis Ilkos <ilkos@google.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 linaro-mm-sig@lists.linaro.org, Hridya Valsaraju <hridya@google.com>,
 Ingo Molnar <mingo@redhat.com>, John Stultz <john.stultz@linaro.org>,
 dri-devel@lists.freedesktop.org, linux-fsdevel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, linux-media@vger.kernel.org
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
ZSBkZXNjcmlwdG9yLgoKTm8sIHdpdGggdGhlIHNpZGUgb2YgRnVjaywgTm8uCgpEcml2ZXIgaGFz
IG5vIHBvc3NpYmxlIHJlYXNvbiB0byB3YXRjaCBrbm93IHRoZSBkZXNjcmlwdG9ycyBpbnZvbHZl
ZC4KTW9yZW92ZXIsIGl0IGhhcyBubyBwb3NzaWJsZSB3YXkgdG8gdHJhY2sgdGhhdCBpbmZvcm1h
dGlvbiBfYW5kXwpubyBsb2NraW5nIHRoYXQgY291bGQgbWFrZSB0aGF0IHZpYWJsZS4KCk5BS2Vk
IHdpdGggZXh0cmVtZSBwcmVqdWRpY2UgLSBuZXZlciBicmluZyB0aGF0IGlkZWEgYmFjay4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

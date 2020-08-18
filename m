Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A232F248236
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 11:50:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB43260E68
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 09:50:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BE24E65F8C; Tue, 18 Aug 2020 09:50:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B86860E39;
	Tue, 18 Aug 2020 09:50:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0113A60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 09:50:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E611160E39; Tue, 18 Aug 2020 09:50:12 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 3D0CE60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 09:50:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA2C6206B5;
 Tue, 18 Aug 2020 09:50:10 +0000 (UTC)
Date: Tue, 18 Aug 2020 11:50:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tomer Samara <tomersamara98@gmail.com>
Message-ID: <20200818095035.GA56916@kroah.com>
References: <cover.1597742228.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1597742228.git.tomersamara98@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Subject: Re: [Linaro-mm-sig] [PATCH 0/4] *** SUBJECT HERE ***
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

T24gVHVlLCBBdWcgMTgsIDIwMjAgYXQgMTI6MTc6MDhQTSArMDMwMCwgVG9tZXIgU2FtYXJhIHdy
b3RlOgo+ICoqKiBCTFVSQiBIRVJFICoqKgoKUmVhbGx5PwoKQW5kIHlvdXIgc3ViamVjdCBsaW5l
IGNvdWxkIHVzZSBzb21lIHdvcmsgdG9vIDooCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=

Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DE03B820F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jun 2021 14:22:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C247063586
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Jun 2021 12:22:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6D0456600D; Wed, 30 Jun 2021 12:22:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A71E60AE8;
	Wed, 30 Jun 2021 12:22:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 89C3960847
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Jun 2021 12:22:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 86BDE60AE8; Wed, 30 Jun 2021 12:22:28 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id 6C1F160847
 for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Jun 2021 12:22:26 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4594F613ED;
 Wed, 30 Jun 2021 12:22:24 +0000 (UTC)
Date: Wed, 30 Jun 2021 08:22:22 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20210630082222.497170a3@oasis.local.home>
In-Reply-To: <e3a04d2554bfbe6a7e516c18b5f2848aa040e498.camel@perches.com>
References: <cover.1621024265.git.bristot@redhat.com>
 <2c59beee3b36b15592bfbb9f26dee7f8b55fd814.1621024265.git.bristot@redhat.com>
 <20210603172902.41648183@gandalf.local.home>
 <1e068d21106bb6db05b735b4916bb420e6c9842a.camel@perches.com>
 <20210604122128.0d348960@oasis.local.home>
 <48a056adabd8f70444475352f617914cef504a45.camel@perches.com>
 <e3a04d2554bfbe6a7e516c18b5f2848aa040e498.camel@perches.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH V2] treewide: Add missing semicolons to
 __assign_str uses
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: linux-nfs@vger.kernel.org, lima@lists.freedesktop.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 amd-gfx@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, 30 Jun 2021 04:28:39 -0700
Joe Perches <joe@perches.com> wrote:

> On Sat, 2021-06-12 at 08:42 -0700, Joe Perches wrote:
> > The __assign_str macro has an unusual ending semicolon but the vast
> > majority of uses of the macro already have semicolon termination.  
> 
> ping?
> 

I wasn't sure I was the one to take this. I can, as I can run tests on
it as well. I have some last minute fixes sent to me on something else,
and I can apply this along with them.

-- Steve
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

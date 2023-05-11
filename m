Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CABA6FEBD6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 May 2023 08:41:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2565644234
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 May 2023 06:41:10 +0000 (UTC)
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
	by lists.linaro.org (Postfix) with ESMTPS id 0E8F03EB80
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 May 2023 06:41:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.org.uk header.s=zeniv-20220401 header.b="jw/mMH9q";
	spf=none (lists.linaro.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 62.89.141.173) smtp.mailfrom=viro@ftp.linux.org.uk;
	dmarc=pass (policy=none) header.from=zeniv.linux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description;
	bh=RtWxN7e4QjgKeMqyRm8+weDfqFq3jfnkuzd3W1qjtiM=; b=jw/mMH9qT+/rpGk7mfI4YGlPGe
	uWTb2lZmqfZIuwVdgWuQnLtmQkWFasYr7kqa7CUIFVCLKRFtUvi1n8Qd+6fMBYIIAbvrl/GdFxv2J
	lqAmLygNJHA+XCTSh+mldXiQG+o7dI8T8FS5MrntPj1B3P2ekHWFpwYFdC4tjvXb2QUArkaE0igA9
	oZtyK6diEXw40KxwmYst51pwkoEifoIuQGmWWNdXLmKJ3cCOtTTeK1EclD5jXQT9bgdhOYp/vs0Fz
	UBoWWTUbFlQsarbW1h9IC4EJZW1ubTxAV15CCwSdzwFvYrZWcxDjqD9Lezep+zRrsTgNjjVxyMM2m
	zJpZGunw==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat Linux))
	id 1pwzyw-001dzq-0x;
	Thu, 11 May 2023 06:40:54 +0000
Date: Thu, 11 May 2023 07:40:54 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20230511064054.GM3390869@ZenIV>
References: <202305051103396748797@zte.com.cn>
 <b9ceed26-bf64-6314-3ec5-562542b2b1c6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9ceed26-bf64-6314-3ec5-562542b2b1c6@amd.com>
Sender: Al Viro <viro@ftp.linux.org.uk>
X-Spamd-Result: default: False [-2.90 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[zeniv.linux.org.uk,none];
	MID_RHS_NOT_FQDN(0.50)[];
	FORGED_SENDER(0.30)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	R_DKIM_ALLOW(-0.20)[linux.org.uk:s=zeniv-20220401];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	DKIM_TRACE(0.00)[linux.org.uk:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8419, ipnet:62.89.128.0/19, country:GB];
	FROM_NEQ_ENVFROM(0.00)[viro@zeniv.linux.org.uk,viro@ftp.linux.org.uk];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.712];
	RCPT_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0E8F03EB80
X-Spamd-Bar: --
Message-ID-Hash: HEXLHIJ64CK45K7QCRTQVT23NULY5U77
X-Message-ID-Hash: HEXLHIJ64CK45K7QCRTQVT23NULY5U77
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ye.xingchen@zte.com.cn, sumit.semwal@linaro.org, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sync_file: Use fdget()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HEXLHIJ64CK45K7QCRTQVT23NULY5U77/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, May 05, 2023 at 10:22:09AM +0200, Christian K=F6nig wrote:
> Am 05.05.23 um 05:03 schrieb ye.xingchen@zte.com.cn:
> > From: Ye Xingchen <ye.xingchen@zte.com.cn>
> >=20
> > convert the fget() use to fdget().
>=20
> Well the rational is missing. Why should we do that?

We very definitely should not.  The series appears to be
pure cargo-culting and it's completely wrong.

There is such thing as unwarranted use of fget().  Under some
conditions converting to fdget() is legitimate *and* is an
improvement.  HOWEVER, those conditions are not met in this case.

Background: references in descriptor table do contribute to
struct file refcount.  fget() finds the reference by descriptor
and returns it, having bumped the refcount.  In case when
descriptor table is shared, we must do that - otherwise e.g.
close() or dup2() from another thread could very well have
destroyed the struct file we'd just found.  However, if
descriptor table is *NOT* shared, there's no need to mess
with refcount at all.  Provided that
	* we are not grabbing the reference to keep it (stash
into some data structure, etc.); as soon as we return from
syscall, the reference in descriptor table is fair game for
e.g. close(2).  Or exit(2), for that matter.
	* we remember whether it was shared or not - we can't
just recheck that when we are done with the file; after all,
descriptor table might have been shared when we looked the file up,
but another thread might've died since then and left it not
shared anymore.
	* we do not rip the same reference out of our descriptor
table ourselves - not without seriously convoluted precautions.
Very few places in the kernel can lead to closing descriptors,
so in practice it only becomes a problem when a particularly
ugly ioctl decides that it would be neat to close some descriptor(s).
Example of such convolutions: binder_deferred_fd_close().

fdget() returns a pair that consists of struct file reference
*AND* indication whether we have grabbed a reference.  fdput()
takes such pair.

Both are inlined, and compiler is smart enough to split the
pair into two separate local variables.  The underlying
primitive actually stashes the "have grabbed the refcount"
into the LSB of returned word; see __to_fd() in include/linux/file.h
for details.  It really generates a decent code and a plenty of
places where we want a file by descriptor are just fine with it.

This patch is flat-out broken, since it loses the "have we bumped
the refcount" information - the callers do not get it.

It might be possible to massage the calling conventions to enable
the conversion to fdget(), but it's not obvious that result would
be cleaner and in any case, the patch in question doesn't even
try that.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

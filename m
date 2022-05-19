Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B542252DF8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 23:47:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4609410BF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 May 2022 21:47:22 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id E14F3404E2
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 May 2022 21:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=kTddhtx7FQlXKvG8iI5sagS7X5egDOVIA77mbT4W6bA=; b=oMaSk+Uu2RoMnHq5DGwlyqG2Xe
	E4kWL9Gmeh5HBYegQnrYD8SoQBpxcIZstIvLeERvMwCevBHlzUi+NCA14TbscbWqIDtB95VBtDqZt
	hT3zM8lFz4qAossLjEzSG8icKJXESPuVbtGoZ7PKVQx8JMmzizOiUxnX6wzXe1kQowXwzIADQulh9
	tt02U1ClXGfONZjyuY2+HnYbha7f/j2KfyKnU4peXdXFtYpUN3pWJeC7CMMaiN6LauQS/MiIgDv90
	xD4ReAlBTvEqyetUqtx5f50XAxGOWufktAP9ufITPlC/ngRVfObRHOoaEPg4IJHhcMZ/jIMwvQTVs
	wc1L47Bw==;
Received: from [2601:1c0:6280:3f0::aa0b]
	by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrnz0-00D7iA-0T; Thu, 19 May 2022 21:46:58 +0000
Message-ID: <01c1e280-eec4-4f04-553b-670ae1376c33@infradead.org>
Date: Thu, 19 May 2022 14:46:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Kalesh Singh <kaleshsingh@google.com>
References: <20220519214021.3572840-1-kaleshsingh@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20220519214021.3572840-1-kaleshsingh@google.com>
Message-ID-Hash: ZFUWCKSKK4J4F7BHZY7J7W4XMZQFRS44
X-Message-ID-Hash: ZFUWCKSKK4J4F7BHZY7J7W4XMZQFRS44
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: ilkos@google.com, tjmercier@google.com, surenb@google.com, kernel-team@android.com, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Andrew Morton <akpm@linux-foundation.org>, Christoph Anton Mitterer <mail@christoph.anton.mitterer.name>, Kees Cook <keescook@chromium.org>, Mike Rapoport <rppt@kernel.org>, Colin Cross <ccross@google.com>, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] procfs: Add file path and size to /proc/<pid>/fdinfo
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZFUWCKSKK4J4F7BHZY7J7W4XMZQFRS44/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi--

On 5/19/22 14:40, Kalesh Singh wrote:
> diff --git a/Documentation/filesystems/proc.rst b/Documentation/filesystems/proc.rst
> index 061744c436d9..ad66d78aca51 100644
> --- a/Documentation/filesystems/proc.rst
> +++ b/Documentation/filesystems/proc.rst
> @@ -1922,13 +1922,16 @@ if precise results are needed.
>  3.8	/proc/<pid>/fdinfo/<fd> - Information about opened file
>  ---------------------------------------------------------------
>  This file provides information associated with an opened file. The regular
> -files have at least four fields -- 'pos', 'flags', 'mnt_id' and 'ino'.
> +files have at least six fields -- 'pos', 'flags', 'mnt_id', 'ino', 'size',
> +and 'path'.
> +
>  The 'pos' represents the current offset of the opened file in decimal
>  form [see lseek(2) for details], 'flags' denotes the octal O_xxx mask the
>  file has been created with [see open(2) for details] and 'mnt_id' represents
>  mount ID of the file system containing the opened file [see 3.5
>  /proc/<pid>/mountinfo for details]. 'ino' represents the inode number of
> -the file.
> +the file, 'size' represents the size of the file in bytes, and 'path'
> +represents the file path.
>  
>  A typical output is::
>  
> @@ -1936,6 +1939,8 @@ A typical output is::
>  	flags:	0100002
>  	mnt_id:	19
>  	ino:	63107
> +        size:   0
> +        path:   /dev/null
>  
>  All locks associated with a file descriptor are shown in its fdinfo too::
>  
> @@ -1953,6 +1958,8 @@ Eventfd files
>  	flags:	04002
>  	mnt_id:	9
>  	ino:	63107
> +        size:   0
> +        path:   anon_inode:[eventfd]
>  	eventfd-count:	5a
>  
>  where 'eventfd-count' is hex value of a counter.
> @@ -1966,6 +1973,8 @@ Signalfd files
>  	flags:	04002
>  	mnt_id:	9
>  	ino:	63107
> +        size:   0
> +        path:   anon_inode:[signalfd]
>  	sigmask:	0000000000000200
>  
>  where 'sigmask' is hex value of the signal mask associated
> @@ -1980,6 +1989,8 @@ Epoll files
>  	flags:	02
>  	mnt_id:	9
>  	ino:	63107
> +        size:   0
> +        path:   anon_inode:[eventpoll]
>  	tfd:        5 events:       1d data: ffffffffffffffff pos:0 ino:61af sdev:7
>  
>  where 'tfd' is a target file descriptor number in decimal form,
> @@ -1998,6 +2009,8 @@ For inotify files the format is the following::
>  	flags:	02000000
>  	mnt_id:	9
>  	ino:	63107
> +        size:   0
> +        path:   anon_inode:inotify
>  	inotify wd:3 ino:9e7e sdev:800013 mask:800afce ignored_mask:0 fhandle-bytes:8 fhandle-type:1 f_handle:7e9e0000640d1b6d
>  
>  where 'wd' is a watch descriptor in decimal form, i.e. a target file
> @@ -2021,6 +2034,8 @@ For fanotify files the format is::
>  	flags:	02
>  	mnt_id:	9
>  	ino:	63107
> +        size:   0
> +        path:   anon_inode:[fanotify]
>  	fanotify flags:10 event-flags:0
>  	fanotify mnt_id:12 mflags:40 mask:38 ignored_mask:40000003
>  	fanotify ino:4f969 sdev:800013 mflags:0 mask:3b ignored_mask:40000000 fhandle-bytes:8 fhandle-type:1 f_handle:69f90400c275b5b4
> @@ -2046,6 +2061,8 @@ Timerfd files
>  	flags:	02
>  	mnt_id:	9
>  	ino:	63107
> +        size:   0
> +        path:   anon_inode:[timerfd]
>  	clockid: 0
>  	ticks: 0
>  	settime flags: 01
> @@ -2070,6 +2087,7 @@ DMA Buffer files
>  	mnt_id:	9
>  	ino:	63107
>  	size:   32768
> +        path:   /dmabuf:
>  	count:  2
>  	exp_name:  system-heap

All of these added lines should be indented with a tab instead of spaces.

thanks.
-- 
~Randy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 744F9604DC8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:52:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B4923F2D4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:52:52 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
	by lists.linaro.org (Postfix) with ESMTPS id 598B53F549
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 13:35:48 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 312D81F8F8;
	Thu, 22 Sep 2022 13:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1663853747;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IwL9ZLjfbaspCU82c8med1UAPhmCPx1OWhj8R1+9qNM=;
	b=XihVZkR0NFlKaTEY2REooJ4nnysnnfLcvjy51KzgHbSW+oLtMuf9IonwLm/KkASRNsstRo
	s4Dx+Q4cpaICoaXsH0DUfapvCIci0Ubcv9A9s0vR8XX8+NUFKAnyoOuIT9zDwNjs4dr4X/
	qezh4tAzHSN1OltdzTUMbRixdeL8EVg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1663853747;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IwL9ZLjfbaspCU82c8med1UAPhmCPx1OWhj8R1+9qNM=;
	b=D4SrbPeIUjJXDbzN3l/v7S9Ic5eD5VW9j9nh63nD86Qj+hCZa1n0PAF8TSLqyf+7TdxxOs
	g6cysoCnwD04I3Cw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 5C8F513AA5;
	Thu, 22 Sep 2022 13:35:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id RvYRFbJkLGM6egAAMHmgww
	(envelope-from <dsterba@suse.cz>); Thu, 22 Sep 2022 13:35:46 +0000
Date: Thu, 22 Sep 2022 15:30:14 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20220922133014.GI32411@suse.cz>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922031013.2150682-5-keescook@chromium.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-MailFrom: dsterba@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AYNX3KDEH6QML4USTHYSUV5U2M4ITYO4
X-Message-ID-Hash: AYNX3KDEH6QML4USTHYSUV5U2M4ITYO4
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:52:11 +0000
CC: Vlastimil Babka <vbabka@suse.cz>, linux-btrfs@vger.kernel.org, Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, netdev@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedes
 ktop.org, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: dsterba@suse.cz
Subject: [Linaro-mm-sig] Re: [PATCH 04/12] btrfs: send: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AYNX3KDEH6QML4USTHYSUV5U2M4ITYO4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 21, 2022 at 08:10:05PM -0700, Kees Cook wrote:
> Instead of discovering the kmalloc bucket size _after_ allocation, round
> up proactively so the allocation is explicitly made for the full size,
> allowing the compiler to correctly reason about the resulting size of
> the buffer through the existing __alloc_size() hint.
> 
> Cc: linux-btrfs@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: David Sterba <dsterba@suse.com>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

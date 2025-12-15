Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGjxAEAJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B30411573
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FA38406A9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:07:26 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id 8478F3F828
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 12:57:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=pwB5aJIj;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=uhL6Wzq1;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=wbudG5tR;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b="/lEzb7cY";
	spf=pass (lists.linaro.org: domain of jack@suse.cz designates 195.135.223.131 as permitted sender) smtp.mailfrom=jack@suse.cz;
	dmarc=none
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id C790F5BDC1;
	Mon, 15 Dec 2025 12:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1765803475; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+MMpU8iu26hMrIy/s70C2uUD4P60923K9CkgBqEJuQM=;
	b=pwB5aJIjn8phLTPx90dciLVvvsfvcKP4gkJ66yBeotWcB8KfB5XiqvoFO7jy2uTkyC7Yb0
	JZLMWnyBnFSISomtilFsdBk9B36BOYrswpfuNRST6oxzuo68CfSRARwKaa2cXsYIM2sUeE
	4lDFqwFwDELbInSqS57Nt+ZBmoPWBs0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1765803475;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+MMpU8iu26hMrIy/s70C2uUD4P60923K9CkgBqEJuQM=;
	b=uhL6Wzq1R+PNBj6rfCcqGNMgxtVxaRnHoZyyToVvx4kGFick0Y9bgj6VQ/quRzQ0+xnmCi
	0lYA7snQbCFB6cBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1765803474; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+MMpU8iu26hMrIy/s70C2uUD4P60923K9CkgBqEJuQM=;
	b=wbudG5tRrT5mSpJlFzatkqSwIBsOCTdfoHnUgi2Sq9omNJkKuKsXswef7UpkpzalsaCUOA
	Dll6hqGranEacsANrMAceL1D8/syjts30TI7weAKtY3ETHR/fxxKgSWzqbzQyiEzCS6Ldm
	vwP4EuI/mR5KXUTIq6jvDZNHMvAhH44=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1765803474;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+MMpU8iu26hMrIy/s70C2uUD4P60923K9CkgBqEJuQM=;
	b=/lEzb7cYQcLGYieeI0FGHc2j6U844YUTFaZ0ICjqymlBjCArBNNka7sLpYwDMBbyBbL1c4
	SAALQB2mHJPlRmCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B77483EA65;
	Mon, 15 Dec 2025 12:57:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 3lEkLNIFQGkhTQAAD6G6ig
	(envelope-from <jack@suse.cz>); Mon, 15 Dec 2025 12:57:54 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
	id 6303FA0951; Mon, 15 Dec 2025 13:57:39 +0100 (CET)
Date: Mon, 15 Dec 2025 13:57:39 +0100
From: Jan Kara <jack@suse.cz>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Message-ID: <qxbixswc7daxb3y7o7ebmy34dpa3uv6i5vc2fnj2p6f3sckulk@vcbuzldig7al>
References: <20251215113903.46555-1-bagasdotme@gmail.com>
 <20251215113903.46555-8-bagasdotme@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251215113903.46555-8-bagasdotme@gmail.com>
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -4.01
X-Spamd-Bar: --
X-MailFrom: jack@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HZI5TGK5BRWBZ7B2HDVQOZZIYQQ2SZJL
X-Message-ID-Hash: HZI5TGK5BRWBZ7B2HDVQOZZIYQQ2SZJL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:45 +0000
CC: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linux AMDGPU <amd-gfx@lists.freedesktop.org>, Linux DRI Development <dri-devel@lists.freedesktop.org>, Linux Filesystems Development <linux-fsdevel@vger.kernel.org>, Linux Media <linux-media@vger.kernel.org>, linaro-mm-sig@lists.linaro.org, kasan-dev@googlegroups.com, Linux Virtualization <virtualization@lists.linux.dev>, Linux Memory Management List <linux-mm@kvack.org>, Linux Network Bridge <bridge@lists.linux.dev>, Linux Networking <netdev@vger.kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <da
 kr@kernel.org>, Philipp Stanner <phasta@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Sumit Semwal <sumit.semwal@linaro.org>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Xuan Zhuo <xuanzhuo@linux.alibaba.com>, Eugenio =?utf-8?B?UMOpcmV6?= <eperezma@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, Uladzislau Rezki <urezki@gmail.com>, Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Taimur Hassan <Syed.Hassan@amd.com>, Wayne Lin <Wayne.Lin@amd.com>, Alex Hung <alex.hung@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>, Dillon Varone <Dillon.Varone@amd.com>, George
  Shen <george.shen@amd.com>, Aric Cyr <aric.cyr@amd.com>, Cruise Hung <Cruise.Hung@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Sunil Khatri <sunil.khatri@amd.com>, Dominik Kaszewski <dominik.kaszewski@amd.com>, David Hildenbrand <david@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, Max Kellermann <max.kellermann@ionos.com>, "Nysal Jan K.A." <nysal@linux.ibm.com>, Ryan Roberts <ryan.roberts@arm.com>, Alexey Skidanov <alexey.skidanov@intel.com>, Vlastimil Babka <vbabka@suse.cz>, Kent Overstreet <kent.overstreet@linux.dev>, Vitaly Wool <vitaly.wool@konsulko.se>, Harry Yoo <harry.yoo@oracle.com>, Mateusz Guzik <mjguzik@gmail.com>, NeilBrown <neil@brown.name>, Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>, Ivan Lipski <ivan.lipski@amd.com>, Tao Zhou <tao.zhou1@amd.com>, YiPeng Chai <YiPeng.Chai@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Lyude Paul <lyude@redhat.com>, Daniel Almeida <daniel.almei
 da@collabora.com>, Luben Tuikov <luben.tuikov@amd.com>, Matthew Auld <matthew.auld@intel.com>, Roopa Prabhu <roopa@cumulusnetworks.com>, Mao Zhu <zhumao001@208suo.com>, Shaomin Deng <dengshaomin@cdjrlc.com>, Charles Han <hanchunchao@inspur.com>, Jilin Yuan <yuanjilin@cdjrlc.com>, Swaraj Gaikwad <swarajgaikwad1925@gmail.com>, George Anthony Vernon <contact@gvernon.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 07/14] fs: Describe @isnew parameter in ilookup5_nowait()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZI5TGK5BRWBZ7B2HDVQOZZIYQQ2SZJL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	DATE_IN_PAST(1.00)[2931];
	R_DKIM_REJECT(1.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,googlegroups.com,lists.linux.dev,kvack.org,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,zeniv.linux.org.uk,suse.cz,linaro.org,google.com,redhat.com,linux.alibaba.com,linux-foundation.org,blackwall.org,nvidia.com,davemloft.net,infradead.org,oracle.com,ionos.com,linux.ibm.com,arm.com,linux.dev,konsulko.se,brown.name,collabora.com,cumulusnetworks.com,208suo.com,cdjrlc.com,inspur.com,gvernon.com];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[suse.cz];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[86];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[jack@suse.cz,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[suse.cz:-];
	NEURAL_HAM(-0.00)[-0.480];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 93B30411573
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon 15-12-25 18:38:55, Bagas Sanjaya wrote:
> Sphinx reports kernel-doc warning:
> 
> WARNING: ./fs/inode.c:1607 function parameter 'isnew' not described in 'ilookup5_nowait'
> 
> Describe the parameter.
> 
> Fixes: a27628f4363435 ("fs: rework I_NEW handling to operate without fences")
> Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>

...

> @@ -1593,6 +1593,7 @@ EXPORT_SYMBOL(igrab);
>   * @hashval:	hash value (usually inode number) to search for
>   * @test:	callback used for comparisons between inodes
>   * @data:	opaque data pointer to pass to @test
> + * @isnew:	whether the inode is new or not

I'm sorry but this is true but misleading at the same time. I'd write there
something like:

 * @isnew:    return argument telling whether I_NEW was set when the inode
              was found in hash (the caller needs to wait for I_NEW to clear).


								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGlSBQ4f4WlbpQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:40:30 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE89413058
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:40:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BBFC45C4E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:40:28 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id 25FB23F69B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 11:33:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b="kpuEv/ra";
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=giQRaJtY;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b="kpuEv/ra";
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=giQRaJtY;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of jack@suse.cz designates 195.135.223.131 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 14FD65BDFA;
	Tue,  3 Mar 2026 11:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1772537612; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p4DdREtNiJiOQrLwoyUgGYussCYHVyIxoDajXjekPXE=;
	b=kpuEv/raO0eFZTfGUyM+Zp0J3N8d/BUc56ofJM3npHqMnUodITGE00WQXx2aJzIh8OmGRi
	djUl98VPvFOmJaF3RG8TbY14u/wNVNsNbpO2KCdHXd2JhDtNcahijqb6GinSQeIx2YF7dS
	RGFXs8NFjCMxKc9DFVPaDzIwBAIpxzU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1772537612;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p4DdREtNiJiOQrLwoyUgGYussCYHVyIxoDajXjekPXE=;
	b=giQRaJtY2xPj1wOFq6Fa2xMiBEgSBCEyj1CDFiY1PGUtyx5b36SikfpUlOrmAycGcKKEg1
	gOFGyXQ4XTv9MECg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1772537612; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p4DdREtNiJiOQrLwoyUgGYussCYHVyIxoDajXjekPXE=;
	b=kpuEv/raO0eFZTfGUyM+Zp0J3N8d/BUc56ofJM3npHqMnUodITGE00WQXx2aJzIh8OmGRi
	djUl98VPvFOmJaF3RG8TbY14u/wNVNsNbpO2KCdHXd2JhDtNcahijqb6GinSQeIx2YF7dS
	RGFXs8NFjCMxKc9DFVPaDzIwBAIpxzU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1772537612;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=p4DdREtNiJiOQrLwoyUgGYussCYHVyIxoDajXjekPXE=;
	b=giQRaJtY2xPj1wOFq6Fa2xMiBEgSBCEyj1CDFiY1PGUtyx5b36SikfpUlOrmAycGcKKEg1
	gOFGyXQ4XTv9MECg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 00BEF3EA6E;
	Tue,  3 Mar 2026 11:33:32 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id skktAAzHpmngUwAAD6G6ig
	(envelope-from <jack@suse.cz>); Tue, 03 Mar 2026 11:33:32 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
	id ADD8FA0A1B; Tue,  3 Mar 2026 12:33:27 +0100 (CET)
Date: Tue, 3 Mar 2026 12:33:27 +0100
From: Jan Kara <jack@suse.cz>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <632zh5igh5dlniw2aboh23enl34csbfb5oizz4udz2mca55rxc@ncjzx2adt5za>
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
 <20260302-iino-u64-v2-82-e5388800dae0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260302-iino-u64-v2-82-e5388800dae0@kernel.org>
X-Spam-Flag: NO
X-Spam-Score: -0.51
X-Spam-Level: 
X-Spamd-Bar: -
X-MailFrom: jack@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NKMMJOWPNE533UGUBXTPLGZV2IISPVXD
X-Message-ID-Hash: NKMMJOWPNE533UGUBXTPLGZV2IISPVXD
X-Mailman-Approved-At: Thu, 16 Apr 2026 17:00:14 +0000
CC: Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Dan Williams <dan.j.williams@intel.com>, Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>, David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>, Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>, Ronnie Sahlberg <ro
 nniesahlberg@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>, Bharath SM <bharathsm@microsoft.com>, Alexander Aring <alex.aring@gmail.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>, Viacheslav Dubeyko <slava@dubeyko.com>, Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>, David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>, Ian Kent <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>, Salah Triki <salah.triki@gmail.com>, "Tigran A. Aivazian" <aivazian.tigran@gmail.com>, Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>, Christoph Hellwig <hch@infradead.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Yangtao Li <frank.li@vivo.com>, Mikulas Patoc
 ka <mikulas@artax.karlin.mff.cuni.cz>, David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>, Dave Kleikamp <shaggy@kernel.org>, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>, Zhihao Cheng <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>, Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>, John Johansen <john.johansen@canonical.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>, Stephen Smalley <stephen.smalley.work@g
 mail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Casey Schaufler <casey@schaufler-ca.com>, Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Eric Dumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@google.com>, Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>, Oleg Nesterov <oleg@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, "Darrick J. Wong" <djw
 ong@kernel.org>, Martin Schiller <ms@dev.tdt.de>, Eric Paris <eparis@redhat.com>, Joerg Reuter <jreuter@yaina.de>, Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Oliver Hartkopp <socketcan@hartkopp.net>, Marc Kleine-Budde <mkl@pengutronix.de>, David Ahern <dsahern@kernel.org>, Neal Cardwell <ncardwell@google.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, Remi Denis-Courmont <courmisch@gmail.com>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Magnus Karlsson <magnus.karlsson@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Stanislav Fomichev <sdf@fomichev.me>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.
 kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-h
 ams@vger.kernel.org, linux-x25@vger.kernel.org, audit@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 082/110] ext2: replace PRIino with %llu/%llx format strings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NKMMJOWPNE533UGUBXTPLGZV2IISPVXD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	DATE_IN_PAST(1.00)[1062];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[suse.cz];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,paul-moore.com,namei.org,hallyn.com,linux.ibm.com,g mail.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,yaina.de,holtmann.org,hartkopp.net,pengutronix.de,secunet.com,gondor.apana.org.au,fomichev.me,iogearbox.net,vger.kernel.org,vger,lists.linux.dev,kvack.org,lists.sourceforge.net,lists.samba.org,lists.infradead.org,coda.cs.cmu.edu,lists.orangefs.org,lists.ubuntu.com,lists.freedesktop.org
 ,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[172];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[jack@suse.cz,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[suse.cz:-];
	NEURAL_HAM(-0.00)[-0.989];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,suse.com:email,suse.cz:email]
X-Rspamd-Queue-Id: 8DE89413058
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon 02-03-26 15:25:06, Jeff Layton wrote:
> Now that i_ino is u64 and the PRIino format macro has been removed,
> replace all uses in ext2 with the concrete format strings.
> 
> Signed-off-by: Jeff Layton <jlayton@kernel.org>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/ext2/dir.c    | 10 +++++-----
>  fs/ext2/ialloc.c |  2 +-
>  fs/ext2/inode.c  |  2 +-
>  fs/ext2/xattr.c  | 14 +++++++-------
>  4 files changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/fs/ext2/dir.c b/fs/ext2/dir.c
> index f87106907da31bb7c1ca65c0ec2dcc0d47d27c62..278d4be8ecbe7790204b5ba985a7ce088fadb181 100644
> --- a/fs/ext2/dir.c
> +++ b/fs/ext2/dir.c
> @@ -141,7 +141,7 @@ static bool ext2_check_folio(struct folio *folio, int quiet, char *kaddr)
>  Ebadsize:
>  	if (!quiet)
>  		ext2_error(sb, __func__,
> -			"size of directory #%" PRIino "u is not a multiple "
> +			"size of directory #%llu is not a multiple "
>  			"of chunk size", dir->i_ino);
>  	goto fail;
>  Eshort:
> @@ -160,7 +160,7 @@ static bool ext2_check_folio(struct folio *folio, int quiet, char *kaddr)
>  	error = "inode out of bounds";
>  bad_entry:
>  	if (!quiet)
> -		ext2_error(sb, __func__, "bad entry in directory #%" PRIino "u: : %s - "
> +		ext2_error(sb, __func__, "bad entry in directory #%llu: : %s - "
>  			"offset=%llu, inode=%lu, rec_len=%d, name_len=%d",
>  			dir->i_ino, error, folio_pos(folio) + offs,
>  			(unsigned long) le32_to_cpu(p->inode),
> @@ -170,7 +170,7 @@ static bool ext2_check_folio(struct folio *folio, int quiet, char *kaddr)
>  	if (!quiet) {
>  		p = (ext2_dirent *)(kaddr + offs);
>  		ext2_error(sb, "ext2_check_folio",
> -			"entry in directory #%" PRIino "u spans the page boundary"
> +			"entry in directory #%llu spans the page boundary"
>  			"offset=%llu, inode=%lu",
>  			dir->i_ino, folio_pos(folio) + offs,
>  			(unsigned long) le32_to_cpu(p->inode));
> @@ -281,7 +281,7 @@ ext2_readdir(struct file *file, struct dir_context *ctx)
>  
>  		if (IS_ERR(kaddr)) {
>  			ext2_error(sb, __func__,
> -				   "bad page in #%" PRIino "u",
> +				   "bad page in #%llu",
>  				   inode->i_ino);
>  			ctx->pos += PAGE_SIZE - offset;
>  			return PTR_ERR(kaddr);
> @@ -383,7 +383,7 @@ struct ext2_dir_entry_2 *ext2_find_entry (struct inode *dir,
>  		/* next folio is past the blocks we've got */
>  		if (unlikely(n > (dir->i_blocks >> (PAGE_SHIFT - 9)))) {
>  			ext2_error(dir->i_sb, __func__,
> -				"dir %" PRIino "u size %lld exceeds block count %llu",
> +				"dir %llu size %lld exceeds block count %llu",
>  				dir->i_ino, dir->i_size,
>  				(unsigned long long)dir->i_blocks);
>  			goto out;
> diff --git a/fs/ext2/ialloc.c b/fs/ext2/ialloc.c
> index 6a317411e54191578343308b5a3990aea9c36436..bf21b57cf98cd5f90e1177454a8fd5cca482c2f8 100644
> --- a/fs/ext2/ialloc.c
> +++ b/fs/ext2/ialloc.c
> @@ -590,7 +590,7 @@ struct inode *ext2_new_inode(struct inode *dir, umode_t mode,
>  		goto fail_free_drop;
>  
>  	mark_inode_dirty(inode);
> -	ext2_debug("allocating inode %" PRIino "u\n", inode->i_ino);
> +	ext2_debug("allocating inode %llu\n", inode->i_ino);
>  	ext2_preread_inode(inode);
>  	return inode;
>  
> diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
> index 0ca9148583646812b478f01fd35bcad11498f951..45286c0c3b6b8f86a1ecec0e2f545c5a678dd6ac 100644
> --- a/fs/ext2/inode.c
> +++ b/fs/ext2/inode.c
> @@ -1152,7 +1152,7 @@ static void ext2_free_branches(struct inode *inode, __le32 *p, __le32 *q, int de
>  			 */ 
>  			if (!bh) {
>  				ext2_error(inode->i_sb, "ext2_free_branches",
> -					"Read failure, inode=%" PRIino "u, block=%ld",
> +					"Read failure, inode=%llu, block=%ld",
>  					inode->i_ino, nr);
>  				continue;
>  			}
> diff --git a/fs/ext2/xattr.c b/fs/ext2/xattr.c
> index 4b3dadc0a2a47c85682d9c74edb900cf0f20996f..14ada70db36a76d1436944a3622e5caf0b373b9e 100644
> --- a/fs/ext2/xattr.c
> +++ b/fs/ext2/xattr.c
> @@ -227,7 +227,7 @@ ext2_xattr_get(struct inode *inode, int name_index, const char *name,
>  	if (!ext2_xattr_header_valid(HDR(bh))) {
>  bad_block:
>  		ext2_error(inode->i_sb, "ext2_xattr_get",
> -			"inode %" PRIino "u: bad block %d", inode->i_ino,
> +			"inode %llu: bad block %d", inode->i_ino,
>  			EXT2_I(inode)->i_file_acl);
>  		error = -EIO;
>  		goto cleanup;
> @@ -313,7 +313,7 @@ ext2_xattr_list(struct dentry *dentry, char *buffer, size_t buffer_size)
>  	if (!ext2_xattr_header_valid(HDR(bh))) {
>  bad_block:
>  		ext2_error(inode->i_sb, "ext2_xattr_list",
> -			"inode %" PRIino "u: bad block %d", inode->i_ino,
> +			"inode %llu: bad block %d", inode->i_ino,
>  			EXT2_I(inode)->i_file_acl);
>  		error = -EIO;
>  		goto cleanup;
> @@ -454,7 +454,7 @@ ext2_xattr_set(struct inode *inode, int name_index, const char *name,
>  		if (!ext2_xattr_header_valid(header)) {
>  bad_block:
>  			ext2_error(sb, "ext2_xattr_set",
> -				"inode %" PRIino "u: bad block %d", inode->i_ino,
> +				"inode %llu: bad block %d", inode->i_ino,
>  				   EXT2_I(inode)->i_file_acl);
>  			error = -EIO;
>  			goto cleanup;
> @@ -833,7 +833,7 @@ ext2_xattr_delete_inode(struct inode *inode)
>  
>  	if (!ext2_data_block_valid(sbi, EXT2_I(inode)->i_file_acl, 1)) {
>  		ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
> -			"inode %" PRIino "u: xattr block %d is out of data blocks range",
> +			"inode %llu: xattr block %d is out of data blocks range",
>  			inode->i_ino, EXT2_I(inode)->i_file_acl);
>  		goto cleanup;
>  	}
> @@ -841,14 +841,14 @@ ext2_xattr_delete_inode(struct inode *inode)
>  	bh = sb_bread(inode->i_sb, EXT2_I(inode)->i_file_acl);
>  	if (!bh) {
>  		ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
> -			"inode %" PRIino "u: block %d read error", inode->i_ino,
> +			"inode %llu: block %d read error", inode->i_ino,
>  			EXT2_I(inode)->i_file_acl);
>  		goto cleanup;
>  	}
>  	ea_bdebug(bh, "b_count=%d", atomic_read(&(bh->b_count)));
>  	if (!ext2_xattr_header_valid(HDR(bh))) {
>  		ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
> -			"inode %" PRIino "u: bad block %d", inode->i_ino,
> +			"inode %llu: bad block %d", inode->i_ino,
>  			EXT2_I(inode)->i_file_acl);
>  		goto cleanup;
>  	}
> @@ -952,7 +952,7 @@ ext2_xattr_cache_find(struct inode *inode, struct ext2_xattr_header *header)
>  		bh = sb_bread(inode->i_sb, ce->e_value);
>  		if (!bh) {
>  			ext2_error(inode->i_sb, "ext2_xattr_cache_find",
> -				"inode %" PRIino "u: block %ld read error",
> +				"inode %llu: block %ld read error",
>  				inode->i_ino, (unsigned long) ce->e_value);
>  		} else {
>  			lock_buffer(bh);
> 
> -- 
> 2.53.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

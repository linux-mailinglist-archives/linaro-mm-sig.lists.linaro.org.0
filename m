Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGwbOwoe4WlbpQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:36:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD4A412DA9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:36:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BAB845947
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:09 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by lists.linaro.org (Postfix) with ESMTPS id 3E9263F69B
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 02:28:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=paul-moore.com header.s=google header.b="L8YjJD/B";
	dmarc=pass (policy=none) header.from=paul-moore.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of paul@paul-moore.com designates 209.85.216.50 as permitted sender) smtp.mailfrom=paul@paul-moore.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-354a18c48b5so4570999a91.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 18:28:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772504909; cv=none;
        d=google.com; s=arc-20240605;
        b=IwWbRHNHXTfDISxbJMpsusLiCEZR/Z0JTHpEQ7lH8/1OB/0T6v3Mq83lClBBJBez3o
         rKkX8Eia35J7iTtGCYoCN2lNcRCcKQaHUKTayAnKnQJyw4RFqI8j0RXHTTZKojIgGxe7
         2GWjEiKrlGTdJDL+XaNYyVc5MIjyne1KagEwE6iwdZlYdMxov7atl5HBxdVrEh+zjUzJ
         GZIPsvebyxDirJ3CGV9yNiyyMP3nckDMrs5m9boObQgEKXIDq4Gq5+xUPgV6xGb4XTSU
         n2Mg5MFqKi3H5Ubiiwnczft9n1A1UpobtnQOj36lQ7t8sF2W2oDzkb8QQ+htOhDXVhuE
         DB2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=;
        fh=s4gN4SxUCRtwlakjgh3ri9rv7Ynw3dOkkNiTA93vJoA=;
        b=SqeQ/gxBNn85FvoXvKfOBF0kTKSwDc0QOtV/YjxEWjqCTemOuvWBParhsOWmmnOp22
         ShaCjeZK1gUAS8JtfM9zT909p64k7R8B1mCwajmBndtfNEB0k/LCpSOlXsKlgxrzGwDt
         whIgLDScWkFi4LUyt9FQsmrt1fOAD6rDZ+iDbgqPcpkGfapM6Z35sCLr5Rqm+Rsfhpjw
         WlsP0mmkNOAHPN3wMB8qZwftDiqw1bYiGv45f6k7J5cD4ZiBOPhTOmQNAwkhxGoD733u
         an6XLmNXM/6EFRDcIIzsZLIr8OtUmF3T5yF+0sa09d8AExfRsYatchZiPuD57FT+XVl7
         1RCw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore.com; s=google; t=1772504909; x=1773109709; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=;
        b=L8YjJD/BOIRKRDag/p9B+eDWvSb9EbboGIk55fYtbuRIISdwga3W8aP4LuGMNxXyZT
         fRZaCri7Fn3DI1PDYto6mgUMkvKxTGqezJvl0EiyuOMpk99zH41FWH20EMbQbOD2QSh+
         BSLcTpIny4xlQRDIXVsjWT8+84aRH847ZBTS4R+vLSKheCqr3i9eXRHWmkDNfDmZIqgq
         pqatRKH/LSDIkFCRUvxgCXvDV8pIsi9q1P6hMYfhYQ4ZdAT07zS1O5zRQZ2mQTCF7SkR
         6BskDU8ELFCwCWIeX0FuaNaF9Ul9UxhvuEHKeAo1PeyDG70n974/rMI86ZJ/B3qlroU0
         70sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772504909; x=1773109709;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=;
        b=t8K9NM4uzKPFnOg5Wj0P8K7DDdERz+Gtv7+/CHneKlnDf6s9iUk8QDKdzVDTWCvI7h
         33+EOYnsSBZyJs1Kh5uDwPwlAS6EzT2hsj41mCkS6u65Hca9sCxc4FyHcq3IonI72XoR
         19maHzanFeebeXTxIuHR2+/o7aiXNEZXuInzVHCZTAksYYazhOAD4wEsOuyQkZpi2++c
         jao7oAQKbfVadYERBPLDTpfHphzHci3jb0UFJ7a/wQXlZshsdHq4rY52Cvdzx/JAmA00
         z8j8XIF3qkSJ01wMcOHFLq6Y+V7/t1EZ5Ytkw5focETmHGy73uxZhfwzIt/fVwd0ghve
         PHAw==
X-Forwarded-Encrypted: i=1; AJvYcCU4vnX2mr9If4AoZYuqtiZmIUdrD+2kzackR9unUHUlHAdZPg2RyLdYWFUoejyh90kGBNqBMTV/80t0aZ/R@lists.linaro.org
X-Gm-Message-State: AOJu0Yz9eGalTqxqT3Sv6iol/rEjmBC+E2zmcQiCmNP5zUIP0G5PrOqq
	CbzlldVjJaFttiO7Hu11kjgFExqjJ/KYxLmfzHGbUj120TgTUGo0kwr5IZfKs7m6L7jmmGUoWCf
	4MISMyzxnIzhn79fY2tdMkmdP5Um0+5z8SmQvzx46
X-Gm-Gg: ATEYQzzcS/wCG+gFzsjUbRCNJhFtybJ+zw8aobqG8SVGSfNVI/UfHtuCDW+A/9yLZTs
	tODHi5OfKbaDnCIcn6FVI2VUZKH6Wfd23rlQZ+Vm5BW4ygxTY3aTNz+h0VdYY3cK+VbGp4hZUUR
	JPo7hF2cD0rhHz3LmCQkQDnPrp9ZpGJYu1bqucgdRvtPr5u84maIt+tO1dM2YUvxV7IdoqP20Xc
	A/jbLBZ4WpnRh1VcEauCA81steTwaMtr3Z/Rv5fN2mZNEwRCOOjn8DO9VuDZhbzr1KoT+456DQb
	yDL39CI=
X-Received: by 2002:a17:90a:7f93:b0:356:1db4:8fe5 with SMTP id
 98e67ed59e1d1-35965cc714fmr9453563a91.29.1772504909127; Mon, 02 Mar 2026
 18:28:29 -0800 (PST)
MIME-Version: 1.0
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org> <20260302-iino-u64-v2-49-e5388800dae0@kernel.org>
In-Reply-To: <20260302-iino-u64-v2-49-e5388800dae0@kernel.org>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 2 Mar 2026 21:28:17 -0500
X-Gm-Features: AaiRm53ToDAKLnqMzF7h_Rr5obeE3dnKPI4TQkaY52RSs5vb8oGyabc3Zmeif9I
Message-ID: <CAHC9VhRLAhMYL1ax3+LCeLLhnK0XGnvs0kGPGgHaptTaDynroA@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: paul@paul-moore.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RAHKKAPIU7ATQ7UHT5WR6ZZTWUK5DO27
X-Message-ID-Hash: RAHKKAPIU7ATQ7UHT5WR6ZZTWUK5DO27
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:59:58 +0000
CC: Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Dan Williams <dan.j.williams@intel.com>, Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>, David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>, Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>, Ronnie Sahlberg <ro
 nniesahlberg@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>, Bharath SM <bharathsm@microsoft.com>, Alexander Aring <alex.aring@gmail.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>, Viacheslav Dubeyko <slava@dubeyko.com>, Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>, David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>, Ian Kent <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>, Salah Triki <salah.triki@gmail.com>, "Tigran A. Aivazian" <aivazian.tigran@gmail.com>, Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>, Christoph Hellwig <hch@infradead.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Yangtao Li <frank.li@vivo.com>, Mikulas Patoc
 ka <mikulas@artax.karlin.mff.cuni.cz>, David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>, Dave Kleikamp <shaggy@kernel.org>, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>, Zhihao Cheng <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>, Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>, John Johansen <john.johansen@canonical.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosna
 ce@redhat.com>, Casey Schaufler <casey@schaufler-ca.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Eric Dumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@google.com>, Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>, Oleg Nesterov <oleg@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, "Darrick J. Wong" <djwong@kernel.org>, Martin Schiller
  <ms@dev.tdt.de>, Eric Paris <eparis@redhat.com>, Joerg Reuter <jreuter@yaina.de>, Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Oliver Hartkopp <socketcan@hartkopp.net>, Marc Kleine-Budde <mkl@pengutronix.de>, David Ahern <dsahern@kernel.org>, Neal Cardwell <ncardwell@google.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, Remi Denis-Courmont <courmisch@gmail.com>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Magnus Karlsson <magnus.karlsson@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Stanislav Fomichev <sdf@fomichev.me>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.d
 ev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@v
 ger.kernel.org, audit@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 049/110] security: use PRIino format for i_ino
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RAHKKAPIU7ATQ7UHT5WR6ZZTWUK5DO27/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1071];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[paul-moore.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.748];
	RCPT_COUNT_GT_50(0.00)[171];
	FROM_NEQ_ENVFROM(0.00)[paul@paul-moore.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,namei.org,hallyn.com,linux.ibm.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,yaina.de,holtmann.org,hartkopp.net,pengutronix.de,secunet.com,gondor.apana.org.au,fomichev.me,iogearbox.net,vger.kernel.org,lists.linux.d,lists.linux.dev,kvack.org,lists.sourceforge.net,lists.samba.org,lists.infradead.org,coda.cs.cmu.edu,lists.orangefs.org,lists.ubuntu.com,lists.freedesktop.org,lists.linaro.org
 ,v];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,paul-moore.com:url,paul-moore.com:email]
X-Rspamd-Queue-Id: 8AD4A412DA9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXIgMiwgMjAyNiBhdCAzOjM24oCvUE0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2Vy
bmVsLm9yZz4gd3JvdGU6DQo+DQo+IENvbnZlcnQgc2VjdXJpdHkgaV9pbm8gZm9ybWF0IHN0cmlu
Z3MgdG8gdXNlIHRoZSBQUklpbm8gZm9ybWF0DQo+IG1hY3JvIGluIHByZXBhcmF0aW9uIGZvciB0
aGUgd2lkZW5pbmcgb2YgaV9pbm8gdmlhIGtpbm9fdC4NCj4NCj4gQWxzbyBjb3JyZWN0IHNpZ25l
ZCBmb3JtYXQgc3BlY2lmaWVycyB0byB1bnNpZ25lZCwgc2luY2UgaW5vZGUNCj4gbnVtYmVycyBh
cmUgdW5zaWduZWQgdmFsdWVzLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmIExheXRvbiA8amxh
eXRvbkBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHNlY3VyaXR5L2FwcGFybW9yL2FwcGFybW9yZnMu
YyAgICAgICB8ICA0ICsrLS0NCj4gIHNlY3VyaXR5L2ludGVncml0eS9pbnRlZ3JpdHlfYXVkaXQu
YyB8ICAyICstDQo+ICBzZWN1cml0eS9pcGUvYXVkaXQuYyAgICAgICAgICAgICAgICAgfCAgMiAr
LQ0KPiAgc2VjdXJpdHkvbHNtX2F1ZGl0LmMgICAgICAgICAgICAgICAgIHwgMTAgKysrKystLS0t
LQ0KPiAgc2VjdXJpdHkvc2VsaW51eC9ob29rcy5jICAgICAgICAgICAgIHwgMTAgKysrKystLS0t
LQ0KPiAgc2VjdXJpdHkvc21hY2svc21hY2tfbHNtLmMgICAgICAgICAgIHwgMTIgKysrKysrLS0t
LS0tDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQ0KDQpObyBjb21tZW50IG9uIHRoZSBQUklpbm8gc3BlY2lmaWVyLCBidXQgdGhlIExTTSBmcmFt
ZXdvcmsgYW5kIFNFTGludXgNCmNoYW5nZXMgc2VlbSBjb21wbGV0ZS4NCg0KQWNrZWQtYnk6IFBh
dWwgTW9vcmUgPHBhdWxAcGF1bC1tb29yZS5jb20+IChMU00vU0VMaW51eCkNCg0KLS0gDQpwYXVs
LW1vb3JlLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==

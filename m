Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALfWNQoZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51388412764
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5849C458AE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:49 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lists.linaro.org (Postfix) with ESMTPS id E47FC3F824
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 16:47:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=canonical.com header.s=20251003 header.b=AsZRArcr;
	spf=pass (lists.linaro.org: domain of ryan.lee@canonical.com designates 185.125.188.123 as permitted sender) smtp.mailfrom=ryan.lee@canonical.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=canonical.com
Received: from mail-yx1-f70.google.com (mail-yx1-f70.google.com [74.125.224.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BD6D64013A
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 16:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1772210832;
	bh=BKQzT9t7ZI3mb+6EDIKBTxaX0DX68JkIAcPYLBp08+M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=AsZRArcr+IHOjGSBnonu/oj477dSluZfbYqix5/Y3zCBdoV1+uw6mYYHWwc4sPEzW
	 HjFcFZE09FnavTkEnrKbxmF0r3YbTQPiFMojDWqkufdWKDMCZW9OPxWmPLHGl8VYyP
	 aEEDR142r/egN11v+6BUwh9UCjnO7iqcqVKNlvjuimRs6gHHfWgooiT0xYazkycZV9
	 iGaNpfepDa56QYdI4I7j3O9bAMZ5DH4c2WTlkXndqNrhlLiQOUUvwizjaREzzR+RaW
	 G6qhyP2mK34/AwEY8BsSjxU/P2yJBLCVcFF0FazsuIIhPpIJJoppDe/KKLv377XKJO
	 ckRoiSwBJ3h5NMgLM0yT68s2FLDl6gyLkP/lRN3fVuLZu1yxgjda/ENN1odqNnDS9i
	 cUltWCZdejwVb0iOVt7w8SJ+e7iURRxp5NxrVK346lnXyAMDOroqzltJLwTrKWTFrE
	 AN4ruGpriTmmvQ9GwGNvr1LpOw6mwnclV+8SKwiXFM2kWGMs7WC4UqqVSYW/5oxS+O
	 xoiqh6Acy+TYgniHFTAsDU75wpJzuZLSiIVgwW31LUadIpejlNvpg5EcfEaBbQmLVj
	 NgnJJyPdPSKozzmB9LKkQNdrUwMQftfhfgs3hHlvFhllpGK5m8UgazcxDHxIY0+WhT
	 Efp718XcrpREHjvzQoHFxdjs=
Received: by mail-yx1-f70.google.com with SMTP id 956f58d0204a3-64ca2fce827so5119615d50.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 08:47:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772210831; cv=none;
        d=google.com; s=arc-20240605;
        b=b/HjGTFtU1EWskWCgMXklyi0oA3jfgxukMcBjaJE8a3CNJIEYwIckcgy5vidYeiim2
         oGJ3IFplMu3SHY4xYsv7mFdWtULkEii9+hRJH6sFHd6mYZyv5ZVlOnEFw/IfOC/zSesb
         IqEfPCe/yBgFANcvSFx2SKmb+SsYgHPF9BKwN26ehyUeJe1KrXRwUx70GclZOvvyK2Mv
         /u4YMIpEMOQpk1APkfzENS+O6MXPnUG0WncwleHERgMIQwHAf4N5vAwUIN9EoBmxzcgl
         QjTqk+dG7N1WH89xM3/IlbsmZP1rPeC8jd5qwGhcErSMkxnFSQAzrQOz1KlZ9f12fSDL
         r5gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=BKQzT9t7ZI3mb+6EDIKBTxaX0DX68JkIAcPYLBp08+M=;
        fh=16DDX73nJ/U77ARRaLHkNBTOe/YpZrXnbrT9Y36chbI=;
        b=QyX/nJydL/Ppqng4xgkVXznO/Gaicc5TCRabLWBEP0+WJUWRyUAVHFxh4Fw7CUwsBC
         XvBARp/1ij77hUKcJEC41B1W3WHDFdG43bIP9gC3xwkDwwNlgPMHNjPq6Kkign7lwAfc
         Xhb1ngJRR3A4QPB2dYbAKegJ0Fc+wRu6acVyyBUdpX4BlAvQZY9eLP/P/A0VQj2mp6al
         59yqKFmiXIPgXJ1XfPXdV6oZQsLfESl/1L1XmQTM01Z97hCWUp2nwfhjCDvZ8ScFwDl/
         D/f4Ng1gVOeoIbSMv3HZ9cWddca/B0Rpnpk3iulKvfUIWPCXqnxuLXEU3wCmMtscDL0f
         3Mzw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772210831; x=1772815631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BKQzT9t7ZI3mb+6EDIKBTxaX0DX68JkIAcPYLBp08+M=;
        b=Se/i55QSWcOfICwMrslb/6bJuZvy8AAa4ETQMkFAssipXhQkBkOTcHfImJBZEKiwOk
         D9BAAVPUwS9cSZ4w0LOSLQYIlIkL1QH0FOzswHOTwAxNesHF8zyjbuMhjoj/xkz1buV0
         +64HyWRUSdL7Lmg+5KwaxrtuVuLrcKLDP8qfekIBCAIPPqaeNgvwai2skV2ilCnwHW2R
         vfGeJ/3KwwppiE6+DKsPIDJCUJQAT9dnNqAPosPfSVj7uxE1PqQupwggTY0UWuEuoIns
         Jn2M4wwaeDguNvmitKKbl9QoYkioeASvic+iImTC3JRV9i43sL4CB7JqIDQa4bGvjwvU
         pquA==
X-Forwarded-Encrypted: i=1; AJvYcCVsl+Qrtfb+XEGejz8ltxjFYSJCzeH+E2k05/bNJ9Kg8dpnzF1OEIwg8x6wr03s/TQGtWz2lDjkxw9G42HT@lists.linaro.org
X-Gm-Message-State: AOJu0YxtMtHWK1gutc2CkDj0oKftf+yuk5G8bD79EwblhGGBwmeEhKn2
	RaE+32PA4jlbj2JQOcVMw+c5cfyVWIyHy2/JBf6QromIVVAa1b3+8MnMuAajoEsXVDMyf3p+6q5
	BLrqjKKTxWchKR9M1VPbW3vHP4AhEA8pOA15X5k6NgshnXVsnB5oVeDnc0BLFCdBnbynvDES2hu
	9ThGUY9Hx75XgpR86QOHFIME5Ga62HTYWOA0s9JOIdAtg0YojpuaonX9Hg0+M=
X-Gm-Gg: ATEYQzw3ukEVh8TpPn1dA9z95Lu8wkI0Et6/OGI4qR2a+orkc/E8kYX2AMLeTdGH76X
	zH7pZ87fItM1n7KtK0XR9QlcSecpuQGJfk4ophIXeVbw/AS9M5ifZnzKHdDoMcDCbTn2kEtyE5p
	PC1Vxw6buP5Ni/gvI5nvPafgoR0Lrtd7cLf5az1p3pyelPPl0wKfOGf5FYV4Yy4kF65g2Nc77FA
	VoCsJ/py24QLsxduEW5bxqRvY7SLkcHchGUMNhUAlIYTST3mdNKlq60QggxgEnjN04=
X-Received: by 2002:a53:b743:0:b0:64c:9b84:92ee with SMTP id 956f58d0204a3-64cb6f438a9mr3821161d50.31.1772210830721;
        Fri, 27 Feb 2026 08:47:10 -0800 (PST)
X-Received: by 2002:a53:b743:0:b0:64c:9b84:92ee with SMTP id
 956f58d0204a3-64cb6f438a9mr3821130d50.31.1772210830102; Fri, 27 Feb 2026
 08:47:10 -0800 (PST)
MIME-Version: 1.0
References: <20260226-iino-u64-v1-0-ccceff366db9@kernel.org> <20260226-iino-u64-v1-51-ccceff366db9@kernel.org>
In-Reply-To: <20260226-iino-u64-v1-51-ccceff366db9@kernel.org>
From: Ryan Lee <ryan.lee@canonical.com>
Date: Fri, 27 Feb 2026 08:46:58 -0800
X-Gm-Features: AaiRm50sr0j0-BwzNnmwGRvH8jyB1wNkHgZo3vdp3K_4YIT1mBOH-BzuS2c5S3A
Message-ID: <CAKCV-6ujQK3yj8sB2eHafaw4pvrJUeK18Hu4vzvNSjH48RVgYg@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: ryan.lee@canonical.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CA46HPVUZE342PC3LFOX6BKWUTXNYAFX
X-Message-ID-Hash: CA46HPVUZE342PC3LFOX6BKWUTXNYAFX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:09 +0000
CC: Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Dan Williams <dan.j.williams@intel.com>, Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>, David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>, Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>, Ronnie Sahlberg <ro
 nniesahlberg@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>, Bharath SM <bharathsm@microsoft.com>, Alexander Aring <alex.aring@gmail.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>, Viacheslav Dubeyko <slava@dubeyko.com>, Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>, David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>, Ian Kent <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>, Salah Triki <salah.triki@gmail.com>, "Tigran A. Aivazian" <aivazian.tigran@gmail.com>, Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>, Christoph Hellwig <hch@infradead.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Yangtao Li <frank.li@vivo.com>, Mikulas Patoc
 ka <mikulas@artax.karlin.mff.cuni.cz>, David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>, Dave Kleikamp <shaggy@kernel.org>, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>, Zhihao Cheng <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>, Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>, John Johansen <john.johansen@canonical.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>, Stephen Smalley <stephen.smalley.work@g
 mail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Casey Schaufler <casey@schaufler-ca.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Eric Dumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@google.com>, Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>, Oleg Nesterov <oleg@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, "Darrick J. Wong" <d
 jwong@kernel.org>, Martin Schiller <ms@dev.tdt.de>, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@list
 s.linaro.org, netdev@vger.kernel.org, linux-perf-users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 51/61] security: update audit format strings for u64 i_ino
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CA46HPVUZE342PC3LFOX6BKWUTXNYAFX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [6.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1152];
	R_DKIM_REJECT(1.00)[canonical.com:s=20251003];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[canonical.com:-];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[146];
	FROM_NEQ_ENVFROM(0.00)[ryan.lee@canonical.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,paul-moore.com,namei.org,hallyn.com,linux.ibm.com,g mail.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,vger.kernel.org,lists.linux.dev,kvack.org,lists.sourceforge.net,lists.samba.org,lists.infradead.org,coda.cs.cmu.edu,lists.orangefs.org,lists.ubuntu.com,lists.freedesktop.org,list];
	NEURAL_HAM(-0.00)[-0.865];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 51388412764
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

T24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgOToxM+KAr0FNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOg0KPg0KPiBVcGRhdGUgJWx1LyVsZCB0byAlbGx1LyVsbGQgaW4gc2Vj
dXJpdHkgYXVkaXQgbG9nZ2luZyBmdW5jdGlvbnMgdGhhdA0KPiBwcmludCBpbm9kZS0+aV9pbm8s
IHNpbmNlIGlfaW5vIGlzIG5vdyB1NjQuDQo+DQo+IEZpbGVzIHVwZGF0ZWQ6IGFwcGFybW9yL2Fw
cGFybW9yZnMuYywgaW50ZWdyaXR5L2ludGVncml0eV9hdWRpdC5jLA0KPiBpcGUvYXVkaXQuYywg
bHNtX2F1ZGl0LmMuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+DQo+IC0tLQ0KPiAgc2VjdXJpdHkvYXBwYXJtb3IvYXBwYXJtb3Jmcy5jICAgICAg
IHwgIDQgKystLQ0KPiAgc2VjdXJpdHkvaW50ZWdyaXR5L2ludGVncml0eV9hdWRpdC5jIHwgIDIg
Ky0NCj4gIHNlY3VyaXR5L2lwZS9hdWRpdC5jICAgICAgICAgICAgICAgICB8ICAyICstDQo+ICBz
ZWN1cml0eS9sc21fYXVkaXQuYyAgICAgICAgICAgICAgICAgfCAxMCArKysrKy0tLS0tDQo+ICBz
ZWN1cml0eS9zZWxpbnV4L2hvb2tzLmMgICAgICAgICAgICAgfCAgNCArKy0tDQo+ICBzZWN1cml0
eS9zbWFjay9zbWFja19sc20uYyAgICAgICAgICAgfCAxMiArKysrKystLS0tLS0NCj4gIDYgZmls
ZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYg
LS1naXQgYS9zZWN1cml0eS9hcHBhcm1vci9hcHBhcm1vcmZzLmMgYi9zZWN1cml0eS9hcHBhcm1v
ci9hcHBhcm1vcmZzLmMNCj4gaW5kZXggMmY4NGJkMjNlZGI2OWU3ZTY5Y2IwOTdlNTU0MDkxZGYw
MTMyODE2ZC4uN2I2NDVmNDBlNzFjOTU2ZjIxNmZhNmE3ZDY5YzNlY2Q0ZTJhNWZmNCAxMDA2NDQN
Cj4gLS0tIGEvc2VjdXJpdHkvYXBwYXJtb3IvYXBwYXJtb3Jmcy5jDQo+ICsrKyBiL3NlY3VyaXR5
L2FwcGFybW9yL2FwcGFybW9yZnMuYw0KPiBAQCAtMTQ5LDcgKzE0OSw3IEBAIHN0YXRpYyBpbnQg
YWFmc19jb3VudDsNCj4NCj4gIHN0YXRpYyBpbnQgYWFmc19zaG93X3BhdGgoc3RydWN0IHNlcV9m
aWxlICpzZXEsIHN0cnVjdCBkZW50cnkgKmRlbnRyeSkNCj4gIHsNCj4gLSAgICAgICBzZXFfcHJp
bnRmKHNlcSwgIiVzOlslbHVdIiwgQUFGU19OQU1FLCBkX2lub2RlKGRlbnRyeSktPmlfaW5vKTsN
Cj4gKyAgICAgICBzZXFfcHJpbnRmKHNlcSwgIiVzOlslbGx1XSIsIEFBRlNfTkFNRSwgZF9pbm9k
ZShkZW50cnkpLT5pX2lubyk7DQo+ICAgICAgICAgcmV0dXJuIDA7DQo+ICB9DQo+DQo+IEBAIC0y
NjQ0LDcgKzI2NDQsNyBAQCBzdGF0aWMgaW50IHBvbGljeV9yZWFkbGluayhzdHJ1Y3QgZGVudHJ5
ICpkZW50cnksIGNoYXIgX191c2VyICpidWZmZXIsDQo+ICAgICAgICAgY2hhciBuYW1lWzMyXTsN
Cg0KSSBoYXZlIGNvbmZpcm1lZCB0aGF0IHRoZSBidWZmZXIgaXMgc3RpbGwgYmlnIGVub3VnaCBm
b3IgYSA2NC1iaXQgaW5vZGUgbnVtYmVyLg0KDQo+ICAgICAgICAgaW50IHJlczsNCj4NCj4gLSAg
ICAgICByZXMgPSBzbnByaW50ZihuYW1lLCBzaXplb2YobmFtZSksICIlczpbJWx1XSIsIEFBRlNf
TkFNRSwNCj4gKyAgICAgICByZXMgPSBzbnByaW50ZihuYW1lLCBzaXplb2YobmFtZSksICIlczpb
JWxsdV0iLCBBQUZTX05BTUUsDQo+ICAgICAgICAgICAgICAgICAgICAgICAgZF9pbm9kZShkZW50
cnkpLT5pX2lubyk7DQo+ICAgICAgICAgaWYgKHJlcyA+IDAgJiYgcmVzIDwgc2l6ZW9mKG5hbWUp
KQ0KPiAgICAgICAgICAgICAgICAgcmVzID0gcmVhZGxpbmtfY29weShidWZmZXIsIGJ1Zmxlbiwg
bmFtZSwgc3RybGVuKG5hbWUpKTsNCg0KRm9yIHRoZSBBcHBBcm1vciBwb3J0aW9uOg0KDQpSZXZp
ZXdlZC1CeTogUnlhbiBMZWUgPHJ5YW4ubGVlQGNhbm9uaWNhbC5jb20+DQoNCj4gZGlmZiAtLWdp
dCBhL3NlY3VyaXR5L2ludGVncml0eS9pbnRlZ3JpdHlfYXVkaXQuYyBiL3NlY3VyaXR5L2ludGVn
cml0eS9pbnRlZ3JpdHlfYXVkaXQuYw0KPiBpbmRleCAwZWM1ZTRjMjJjYjJhMTA2NmMyYjg5Nzc3
NmVhZDZkM2RiNzI2MzVjLi5kOGQ5ZTVmZjFjZDIyYjA5MWY0NjJkMWU4M2QyOGQyZDZiZDk4M2U5
IDEwMDY0NA0KPiAtLS0gYS9zZWN1cml0eS9pbnRlZ3JpdHkvaW50ZWdyaXR5X2F1ZGl0LmMNCj4g
KysrIGIvc2VjdXJpdHkvaW50ZWdyaXR5L2ludGVncml0eV9hdWRpdC5jDQo+IEBAIC02Miw3ICs2
Miw3IEBAIHZvaWQgaW50ZWdyaXR5X2F1ZGl0X21lc3NhZ2UoaW50IGF1ZGl0X21zZ25vLCBzdHJ1
Y3QgaW5vZGUgKmlub2RlLA0KPiAgICAgICAgIGlmIChpbm9kZSkgew0KPiAgICAgICAgICAgICAg
ICAgYXVkaXRfbG9nX2Zvcm1hdChhYiwgIiBkZXY9Iik7DQo+ICAgICAgICAgICAgICAgICBhdWRp
dF9sb2dfdW50cnVzdGVkc3RyaW5nKGFiLCBpbm9kZS0+aV9zYi0+c19pZCk7DQo+IC0gICAgICAg
ICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGlubz0lbHUiLCBpbm9kZS0+aV9pbm8pOw0K
PiArICAgICAgICAgICAgICAgYXVkaXRfbG9nX2Zvcm1hdChhYiwgIiBpbm89JWxsdSIsIGlub2Rl
LT5pX2lubyk7DQo+ICAgICAgICAgfQ0KPiAgICAgICAgIGF1ZGl0X2xvZ19mb3JtYXQoYWIsICIg
cmVzPSVkIGVycm5vPSVkIiwgIXJlc3VsdCwgZXJybm8pOw0KPiAgICAgICAgIGF1ZGl0X2xvZ19l
bmQoYWIpOw0KPiBkaWZmIC0tZ2l0IGEvc2VjdXJpdHkvaXBlL2F1ZGl0LmMgYi9zZWN1cml0eS9p
cGUvYXVkaXQuYw0KPiBpbmRleCAzZjBkZWViNTQ5MTI3MzBkOWFjZjVlMDIxYTRhMGNiMjlhMzRl
OTgyLi45M2ZiNTlmYmRkZDYwYjU2YzBiMjJiZTJhMzhiODA5ZWY5ZTE4Yjc2IDEwMDY0NA0KPiAt
LS0gYS9zZWN1cml0eS9pcGUvYXVkaXQuYw0KPiArKysgYi9zZWN1cml0eS9pcGUvYXVkaXQuYw0K
PiBAQCAtMTUzLDcgKzE1Myw3IEBAIHZvaWQgaXBlX2F1ZGl0X21hdGNoKGNvbnN0IHN0cnVjdCBp
cGVfZXZhbF9jdHggKmNvbnN0IGN0eCwNCj4gICAgICAgICAgICAgICAgIGlmIChpbm9kZSkgew0K
PiAgICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGRldj0iKTsN
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYXVkaXRfbG9nX3VudHJ1c3RlZHN0cmluZyhhYiwg
aW5vZGUtPmlfc2ItPnNfaWQpOw0KPiAtICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2df
Zm9ybWF0KGFiLCAiIGlubz0lbHUiLCBpbm9kZS0+aV9pbm8pOw0KPiArICAgICAgICAgICAgICAg
ICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGlubz0lbGx1IiwgaW5vZGUtPmlfaW5vKTsN
Cj4gICAgICAgICAgICAgICAgIH0gZWxzZSB7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGF1
ZGl0X2xvZ19mb3JtYXQoYWIsICIgZGV2PT8gaW5vPT8iKTsNCj4gICAgICAgICAgICAgICAgIH0N
Cj4gZGlmZiAtLWdpdCBhL3NlY3VyaXR5L2xzbV9hdWRpdC5jIGIvc2VjdXJpdHkvbHNtX2F1ZGl0
LmMNCj4gaW5kZXggN2Q2MjNiMDA0OTVjMTRiMDc5ZTEwZTk2M2MyMWE5Zjk0OWMxMWYwNy4uNzM3
ZjVhMjYzYThmNzk0MTYxMzMzMTVlZGYzNjNlY2UzZDc5YzcyMiAxMDA2NDQNCj4gLS0tIGEvc2Vj
dXJpdHkvbHNtX2F1ZGl0LmMNCj4gKysrIGIvc2VjdXJpdHkvbHNtX2F1ZGl0LmMNCj4gQEAgLTIw
Miw3ICsyMDIsNyBAQCB2b2lkIGF1ZGl0X2xvZ19sc21fZGF0YShzdHJ1Y3QgYXVkaXRfYnVmZmVy
ICphYiwNCj4gICAgICAgICAgICAgICAgIGlmIChpbm9kZSkgew0KPiAgICAgICAgICAgICAgICAg
ICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGRldj0iKTsNCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgYXVkaXRfbG9nX3VudHJ1c3RlZHN0cmluZyhhYiwgaW5vZGUtPmlfc2ItPnNfaWQp
Ow0KPiAtICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGlubz0l
bHUiLCBpbm9kZS0+aV9pbm8pOw0KPiArICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2df
Zm9ybWF0KGFiLCAiIGlubz0lbGx1IiwgaW5vZGUtPmlfaW5vKTsNCj4gICAgICAgICAgICAgICAg
IH0NCj4gICAgICAgICAgICAgICAgIGJyZWFrOw0KPiAgICAgICAgIH0NCj4gQEAgLTIxNSw3ICsy
MTUsNyBAQCB2b2lkIGF1ZGl0X2xvZ19sc21fZGF0YShzdHJ1Y3QgYXVkaXRfYnVmZmVyICphYiwN
Cj4gICAgICAgICAgICAgICAgIGlmIChpbm9kZSkgew0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGRldj0iKTsNCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgYXVkaXRfbG9nX3VudHJ1c3RlZHN0cmluZyhhYiwgaW5vZGUtPmlfc2ItPnNfaWQpOw0KPiAt
ICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGlubz0lbHUiLCBp
bm9kZS0+aV9pbm8pOw0KPiArICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2dfZm9ybWF0
KGFiLCAiIGlubz0lbGx1IiwgaW5vZGUtPmlfaW5vKTsNCj4gICAgICAgICAgICAgICAgIH0NCj4g
ICAgICAgICAgICAgICAgIGJyZWFrOw0KPiAgICAgICAgIH0NCj4gQEAgLTIyOCw3ICsyMjgsNyBA
QCB2b2lkIGF1ZGl0X2xvZ19sc21fZGF0YShzdHJ1Y3QgYXVkaXRfYnVmZmVyICphYiwNCj4gICAg
ICAgICAgICAgICAgIGlmIChpbm9kZSkgew0KPiAgICAgICAgICAgICAgICAgICAgICAgICBhdWRp
dF9sb2dfZm9ybWF0KGFiLCAiIGRldj0iKTsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgYXVk
aXRfbG9nX3VudHJ1c3RlZHN0cmluZyhhYiwgaW5vZGUtPmlfc2ItPnNfaWQpOw0KPiAtICAgICAg
ICAgICAgICAgICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGlubz0lbHUiLCBpbm9kZS0+
aV9pbm8pOw0KPiArICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAi
IGlubz0lbGx1IiwgaW5vZGUtPmlfaW5vKTsNCj4gICAgICAgICAgICAgICAgIH0NCj4NCj4gICAg
ICAgICAgICAgICAgIGF1ZGl0X2xvZ19mb3JtYXQoYWIsICIgaW9jdGxjbWQ9MHglaHgiLCBhLT51
Lm9wLT5jbWQpOw0KPiBAQCAtMjQ2LDcgKzI0Niw3IEBAIHZvaWQgYXVkaXRfbG9nX2xzbV9kYXRh
KHN0cnVjdCBhdWRpdF9idWZmZXIgKmFiLA0KPiAgICAgICAgICAgICAgICAgaWYgKGlub2RlKSB7
DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGF1ZGl0X2xvZ19mb3JtYXQoYWIsICIgZGV2PSIp
Ow0KPiAgICAgICAgICAgICAgICAgICAgICAgICBhdWRpdF9sb2dfdW50cnVzdGVkc3RyaW5nKGFi
LCBpbm9kZS0+aV9zYi0+c19pZCk7DQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGF1ZGl0X2xv
Z19mb3JtYXQoYWIsICIgaW5vPSVsdSIsIGlub2RlLT5pX2lubyk7DQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGF1ZGl0X2xvZ19mb3JtYXQoYWIsICIgaW5vPSVsbHUiLCBpbm9kZS0+aV9pbm8p
Ow0KPiAgICAgICAgICAgICAgICAgfQ0KPiAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ICAgICAg
ICAgfQ0KPiBAQCAtMjY1LDcgKzI2NSw3IEBAIHZvaWQgYXVkaXRfbG9nX2xzbV9kYXRhKHN0cnVj
dCBhdWRpdF9idWZmZXIgKmFiLA0KPiAgICAgICAgICAgICAgICAgfQ0KPiAgICAgICAgICAgICAg
ICAgYXVkaXRfbG9nX2Zvcm1hdChhYiwgIiBkZXY9Iik7DQo+ICAgICAgICAgICAgICAgICBhdWRp
dF9sb2dfdW50cnVzdGVkc3RyaW5nKGFiLCBpbm9kZS0+aV9zYi0+c19pZCk7DQo+IC0gICAgICAg
ICAgICAgICBhdWRpdF9sb2dfZm9ybWF0KGFiLCAiIGlubz0lbHUiLCBpbm9kZS0+aV9pbm8pOw0K
PiArICAgICAgICAgICAgICAgYXVkaXRfbG9nX2Zvcm1hdChhYiwgIiBpbm89JWxsdSIsIGlub2Rl
LT5pX2lubyk7DQo+ICAgICAgICAgICAgICAgICByY3VfcmVhZF91bmxvY2soKTsNCj4gICAgICAg
ICAgICAgICAgIGJyZWFrOw0KPiAgICAgICAgIH0NCj4gZGlmZiAtLWdpdCBhL3NlY3VyaXR5L3Nl
bGludXgvaG9va3MuYyBiL3NlY3VyaXR5L3NlbGludXgvaG9va3MuYw0KPiBpbmRleCBkODIyNGVh
MTEzZDFhYzI3M2FhYzFmYjUyMzI0ZjAwYjMzMDFhZTc1Li4xNTBlYTg2ZWJjMWY3YzdmODM5MWFm
NDEwOWEzZGE4MmIxMmQwMGQyIDEwMDY0NA0KPiAtLS0gYS9zZWN1cml0eS9zZWxpbnV4L2hvb2tz
LmMNCj4gKysrIGIvc2VjdXJpdHkvc2VsaW51eC9ob29rcy5jDQo+IEBAIC0xNDAwLDcgKzE0MDAs
NyBAQCBzdGF0aWMgaW50IGlub2RlX2RvaW5pdF91c2VfeGF0dHIoc3RydWN0IGlub2RlICppbm9k
ZSwgc3RydWN0IGRlbnRyeSAqZGVudHJ5LA0KPiAgICAgICAgIGlmIChyYyA8IDApIHsNCj4gICAg
ICAgICAgICAgICAgIGtmcmVlKGNvbnRleHQpOw0KPiAgICAgICAgICAgICAgICAgaWYgKHJjICE9
IC1FTk9EQVRBKSB7DQo+IC0gICAgICAgICAgICAgICAgICAgICAgIHByX3dhcm4oIlNFTGludXg6
ICVzOiAgZ2V0eGF0dHIgcmV0dXJuZWQgJWQgZm9yIGRldj0lcyBpbm89JWxkXG4iLA0KPiArICAg
ICAgICAgICAgICAgICAgICAgICBwcl93YXJuKCJTRUxpbnV4OiAlczogIGdldHhhdHRyIHJldHVy
bmVkICVkIGZvciBkZXY9JXMgaW5vPSVsbGRcbiIsDQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgX19mdW5jX18sIC1yYywgaW5vZGUtPmlfc2ItPnNfaWQsIGlub2RlLT5pX2lubyk7
DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsNCj4gICAgICAgICAgICAgICAg
IH0NCj4gQEAgLTM0NzcsNyArMzQ3Nyw3IEBAIHN0YXRpYyB2b2lkIHNlbGludXhfaW5vZGVfcG9z
dF9zZXR4YXR0cihzdHJ1Y3QgZGVudHJ5ICpkZW50cnksIGNvbnN0IGNoYXIgKm5hbWUsDQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmbmV3c2lkKTsNCj4gICAg
ICAgICBpZiAocmMpIHsNCj4gICAgICAgICAgICAgICAgIHByX2VycigiU0VMaW51eDogIHVuYWJs
ZSB0byBtYXAgY29udGV4dCB0byBTSUQiDQo+IC0gICAgICAgICAgICAgICAgICAgICAgImZvciAo
JXMsICVsdSksIHJjPSVkXG4iLA0KPiArICAgICAgICAgICAgICAgICAgICAgICJmb3IgKCVzLCAl
bGx1KSwgcmM9JWRcbiIsDQo+ICAgICAgICAgICAgICAgICAgICAgICAgaW5vZGUtPmlfc2ItPnNf
aWQsIGlub2RlLT5pX2lubywgLXJjKTsNCj4gICAgICAgICAgICAgICAgIHJldHVybjsNCj4gICAg
ICAgICB9DQo+IGRpZmYgLS1naXQgYS9zZWN1cml0eS9zbWFjay9zbWFja19sc20uYyBiL3NlY3Vy
aXR5L3NtYWNrL3NtYWNrX2xzbS5jDQo+IGluZGV4IDk4YWY5ZDdiOTQzNDY5ZDBkZGQzNDRmYzc4
YzBiODdjYTQwYzE2YzQuLjdlMmY1NGMxN2E1ZDVjNzA3NDBiYmZhOTJiYTRkNGYxYWNhMmNmMjIg
MTAwNjQ0DQo+IC0tLSBhL3NlY3VyaXR5L3NtYWNrL3NtYWNrX2xzbS5jDQo+ICsrKyBiL3NlY3Vy
aXR5L3NtYWNrL3NtYWNrX2xzbS5jDQo+IEBAIC0xODIsNyArMTgyLDcgQEAgc3RhdGljIGludCBz
bWtfYnVfaW5vZGUoc3RydWN0IGlub2RlICppbm9kZSwgaW50IG1vZGUsIGludCByYykNCj4gICAg
ICAgICBjaGFyIGFjY1tTTUtfTlVNX0FDQ0VTU19UWVBFICsgMV07DQo+DQo+ICAgICAgICAgaWYg
KGlzcC0+c21rX2ZsYWdzICYgU01LX0lOT0RFX0lNUFVSRSkNCj4gLSAgICAgICAgICAgICAgIHBy
X2luZm8oIlNtYWNrIFVuY29uZmluZWQgQ29ycnVwdGlvbjogaW5vZGU9KCVzICVsZCkgJXNcbiIs
DQo+ICsgICAgICAgICAgICAgICBwcl9pbmZvKCJTbWFjayBVbmNvbmZpbmVkIENvcnJ1cHRpb246
IGlub2RlPSglcyAlbGxkKSAlc1xuIiwNCj4gICAgICAgICAgICAgICAgICAgICAgICAgaW5vZGUt
Pmlfc2ItPnNfaWQsIGlub2RlLT5pX2lubywgY3VycmVudC0+Y29tbSk7DQo+DQo+ICAgICAgICAg
aWYgKHJjIDw9IDApDQo+IEBAIC0xOTUsNyArMTk1LDcgQEAgc3RhdGljIGludCBzbWtfYnVfaW5v
ZGUoc3RydWN0IGlub2RlICppbm9kZSwgaW50IG1vZGUsIGludCByYykNCj4NCj4gICAgICAgICBz
bWtfYnVfbW9kZShtb2RlLCBhY2MpOw0KPg0KPiAtICAgICAgIHByX2luZm8oIlNtYWNrICVzOiAo
JXMgJXMgJXMpIGlub2RlPSglcyAlbGQpICVzXG4iLCBzbWtfYnVfbWVzc1tyY10sDQo+ICsgICAg
ICAgcHJfaW5mbygiU21hY2sgJXM6ICglcyAlcyAlcykgaW5vZGU9KCVzICVsbGQpICVzXG4iLCBz
bWtfYnVfbWVzc1tyY10sDQo+ICAgICAgICAgICAgICAgICB0c3AtPnNta190YXNrLT5zbWtfa25v
d24sIGlzcC0+c21rX2lub2RlLT5zbWtfa25vd24sIGFjYywNCj4gICAgICAgICAgICAgICAgIGlu
b2RlLT5pX3NiLT5zX2lkLCBpbm9kZS0+aV9pbm8sIGN1cnJlbnQtPmNvbW0pOw0KPiAgICAgICAg
IHJldHVybiAwOw0KPiBAQCAtMjE0LDcgKzIxNCw3IEBAIHN0YXRpYyBpbnQgc21rX2J1X2ZpbGUo
c3RydWN0IGZpbGUgKmZpbGUsIGludCBtb2RlLCBpbnQgcmMpDQo+ICAgICAgICAgY2hhciBhY2Nb
U01LX05VTV9BQ0NFU1NfVFlQRSArIDFdOw0KPg0KPiAgICAgICAgIGlmIChpc3AtPnNta19mbGFn
cyAmIFNNS19JTk9ERV9JTVBVUkUpDQo+IC0gICAgICAgICAgICAgICBwcl9pbmZvKCJTbWFjayBV
bmNvbmZpbmVkIENvcnJ1cHRpb246IGlub2RlPSglcyAlbGQpICVzXG4iLA0KPiArICAgICAgICAg
ICAgICAgcHJfaW5mbygiU21hY2sgVW5jb25maW5lZCBDb3JydXB0aW9uOiBpbm9kZT0oJXMgJWxs
ZCkgJXNcbiIsDQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGlub2RlLT5pX3NiLT5zX2lkLCBp
bm9kZS0+aV9pbm8sIGN1cnJlbnQtPmNvbW0pOw0KPg0KPiAgICAgICAgIGlmIChyYyA8PSAwKQ0K
PiBAQCAtMjIzLDcgKzIyMyw3IEBAIHN0YXRpYyBpbnQgc21rX2J1X2ZpbGUoc3RydWN0IGZpbGUg
KmZpbGUsIGludCBtb2RlLCBpbnQgcmMpDQo+ICAgICAgICAgICAgICAgICByYyA9IDA7DQo+DQo+
ICAgICAgICAgc21rX2J1X21vZGUobW9kZSwgYWNjKTsNCj4gLSAgICAgICBwcl9pbmZvKCJTbWFj
ayAlczogKCVzICVzICVzKSBmaWxlPSglcyAlbGQgJXBEKSAlc1xuIiwgc21rX2J1X21lc3NbcmNd
LA0KPiArICAgICAgIHByX2luZm8oIlNtYWNrICVzOiAoJXMgJXMgJXMpIGZpbGU9KCVzICVsbGQg
JXBEKSAlc1xuIiwgc21rX2J1X21lc3NbcmNdLA0KPiAgICAgICAgICAgICAgICAgc3NrcC0+c21r
X2tub3duLCBzbWtfb2ZfaW5vZGUoaW5vZGUpLT5zbWtfa25vd24sIGFjYywNCj4gICAgICAgICAg
ICAgICAgIGlub2RlLT5pX3NiLT5zX2lkLCBpbm9kZS0+aV9pbm8sIGZpbGUsDQo+ICAgICAgICAg
ICAgICAgICBjdXJyZW50LT5jb21tKTsNCj4gQEAgLTI0NCw3ICsyNDQsNyBAQCBzdGF0aWMgaW50
IHNta19idV9jcmVkZmlsZShjb25zdCBzdHJ1Y3QgY3JlZCAqY3JlZCwgc3RydWN0IGZpbGUgKmZp
bGUsDQo+ICAgICAgICAgY2hhciBhY2NbU01LX05VTV9BQ0NFU1NfVFlQRSArIDFdOw0KPg0KPiAg
ICAgICAgIGlmIChpc3AtPnNta19mbGFncyAmIFNNS19JTk9ERV9JTVBVUkUpDQo+IC0gICAgICAg
ICAgICAgICBwcl9pbmZvKCJTbWFjayBVbmNvbmZpbmVkIENvcnJ1cHRpb246IGlub2RlPSglcyAl
bGQpICVzXG4iLA0KPiArICAgICAgICAgICAgICAgcHJfaW5mbygiU21hY2sgVW5jb25maW5lZCBD
b3JydXB0aW9uOiBpbm9kZT0oJXMgJWxsZCkgJXNcbiIsDQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIGlub2RlLT5pX3NiLT5zX2lkLCBpbm9kZS0+aV9pbm8sIGN1cnJlbnQtPmNvbW0pOw0KPg0K
PiAgICAgICAgIGlmIChyYyA8PSAwKQ0KPiBAQCAtMjUzLDcgKzI1Myw3IEBAIHN0YXRpYyBpbnQg
c21rX2J1X2NyZWRmaWxlKGNvbnN0IHN0cnVjdCBjcmVkICpjcmVkLCBzdHJ1Y3QgZmlsZSAqZmls
ZSwNCj4gICAgICAgICAgICAgICAgIHJjID0gMDsNCj4NCj4gICAgICAgICBzbWtfYnVfbW9kZSht
b2RlLCBhY2MpOw0KPiAtICAgICAgIHByX2luZm8oIlNtYWNrICVzOiAoJXMgJXMgJXMpIGZpbGU9
KCVzICVsZCAlcEQpICVzXG4iLCBzbWtfYnVfbWVzc1tyY10sDQo+ICsgICAgICAgcHJfaW5mbygi
U21hY2sgJXM6ICglcyAlcyAlcykgZmlsZT0oJXMgJWxsZCAlcEQpICVzXG4iLCBzbWtfYnVfbWVz
c1tyY10sDQo+ICAgICAgICAgICAgICAgICBzc2twLT5zbWtfa25vd24sIHNta19vZl9pbm9kZShp
bm9kZSktPnNta19rbm93biwgYWNjLA0KPiAgICAgICAgICAgICAgICAgaW5vZGUtPmlfc2ItPnNf
aWQsIGlub2RlLT5pX2lubywgZmlsZSwNCj4gICAgICAgICAgICAgICAgIGN1cnJlbnQtPmNvbW0p
Ow0KPg0KPiAtLQ0KPiAyLjUzLjANCj4NCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=

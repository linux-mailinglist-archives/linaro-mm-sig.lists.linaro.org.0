Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Kh+JpgY4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:12:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0544126DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:12:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DEC834578F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:12:54 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by lists.linaro.org (Postfix) with ESMTPS id EA74F3F9B5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 21:11:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=paul-moore.com header.s=google header.b=YHFXp7yl;
	spf=pass (lists.linaro.org: domain of paul@paul-moore.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=paul@paul-moore.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=paul-moore.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-358fb86de36so1091367a91.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 13:11:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772140314; cv=none;
        d=google.com; s=arc-20240605;
        b=V9I3uCoTDaZpsuOQQWs9EHFCeKNbtF0pQwYgwmpwJ4WIjBohAFTJy8QelvX56OG1La
         7K7qEW9iJQqo8z9PnruuhkBHjgGBaVAhjp1nrBCSpbMS3NTRMQ4b4G4yZ1xjjzO/hraV
         JRCSvr6Iy95dQYEIdUYilj3VOePkaJX9+AT7GeCcsXnlUID/AoiljefWrqRoQ4TXTJGC
         /6X+lHso/hEtitmzPM0XuDRkuzJA3ctzmFPfOHfkFF16RPZyoZU3bPh+GOycTZeADJeA
         sMP339Q91oqEl9yLXvEo8nx8YTDtkC371+UDi55cftvzCAXwt7QrqZzhRV4b49YqPDMD
         LWnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=;
        fh=ujcPuLbxcrPVtvrVT+c2rjHxBLqmJJ39jQeV2AXdctw=;
        b=U+6VLp27ihdXWUdw2r2vd2mArxufV+aPzW+Np6LX7NBI/42Witc/d+uhBhPNl+jBKd
         UpyRpe+mokDaJgGDHIcYrqeANQLWRP1rTTgoIfqDwAfiPTlE7uBBmvTBSoFNSzBEPUXB
         S6VJiRe/JrKuTtav27QeQBwkgbIcMAGzik2S4ivc80N5GDM86aVDadDRUfo6YH5kJnlL
         FhqCKDWpULpYzPR0fIqs8ASguaLRCglbv9cHIOtRv6E5hUmIHip7r+3CHxMDjYHLaI0F
         sPLqRDWkRPK67Mk+YpqICjhzL9TEhRFcDoPsPeUWq3+Xlevb4Zq3vvQGNimoDQzklBI5
         2/SQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore.com; s=google; t=1772140314; x=1772745114; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=;
        b=YHFXp7yl21kxfPO9ApDIxcCj2ZTGgFOSXAeoBe15Gtiww3/AeYFH/a8dFHmA130lRi
         /Bm/+b0hF/lB0IuEfiZ57Qw5o8rtkq+ElAFn9/wKtzfjjFYpAiU/g0o3fFPyr8jLLZXR
         t4SehXn7ycBjhbhWPMIOy9TYNAJnC5j41j6IIaapBw1cDjVhQuP4GIQ2hwb8L0ERqE8d
         D+XnQwKzVkxPcFRYtmRfc0phjkNTXOk1gpsyG4F231wsnjjXWS8ZAxThu8VF9qRJcs2R
         icD3w5uP7J92RqMAyAMK9SKMPHx245OtZk3xNfG7NuGaZ/p7DBKei5WeiftQoSb3b31v
         nCRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772140314; x=1772745114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zmNhsrxkJsNmzJoSll+GD0SvmHq0rQdZiw5NaBd3y6o=;
        b=X3K8KO1BVqx3iDb5E4C272IERojTOdjJEHtUvG7mxUh8BqBbDqIsmql5xgfPjEC4gk
         WxhzL6VTXYrChbfKZuaCYYBEdV3SZ/6iaHNK0iHCMofFPBGfBlDQNgkPWxLr93VY5KR5
         YDBSEXXHiM7DQCx+ZFJ+PGKmqSw59PKuQQaTGimLwLTKVH2e6z+WxOLiTkuMw8wkp+dt
         7P31eBHUsLK/CrXOorV2IjQYv2C+bv8X5O3re3+QiXqLC/CNv6I0M4pAzz3Nn6azsrga
         7rzM3XhT8BAh+xk5dQf+kKmlhR0fRlpiiPuQLBOs2rzoqFsGxe3ynRRRTWfPrYJWINOc
         il8Q==
X-Forwarded-Encrypted: i=1; AJvYcCX19fEAC7KGCf91hClsggtGU1Ya/uEDc7b1dxYsJVRFVAYSVRMMn/9zWKvnBOsS5iEgDZgN6hl6giKUE5fJ@lists.linaro.org
X-Gm-Message-State: AOJu0Yxx+834BHz/sfI3ZRIuMS6LFbLuUX61lt6UCnaPya0VDex0y/iP
	Gnav1IJEXvvHUsb+HWVsxi06IH2nzR7WwN3iGJvGjlRZ3Cb9tiQTMC8iWbgsllUEA/du5eeO6OB
	/RO49q0x87AuU7u7qjX0nOXw4wBRxln74fiAEDPBj
X-Gm-Gg: ATEYQzy+Bg/c9DTqa8bXSrhuuckgtX6qfD2ba4ediCMYyUiJtFpByCxBwk90vCJSzV7
	jOQ/WOB2oczf+ko1Vo20EvJe6UQPfj+EMb4nDddHGGcfiZ1kbdZsR90ROrHUL9ItLSz+tjwCn0Z
	nt79W1uYe+LB1Nbu30WtE/T2oVN0R/qUYwbBLWW47k0mtb/Tu7Ctzh+5xoeTTWWQ9eXQFPpNjZj
	GyiSlOkguK5uAc/1ojEmX+dE4z/5r5leN/Seh892rZGnOUo9HP6eSX7zMnjBXu+EneWt0Zi4ioW
	RaD67yM=
X-Received: by 2002:a17:90b:574f:b0:359:877:370f with SMTP id
 98e67ed59e1d1-35965ccf029mr498632a91.17.1772140313953; Thu, 26 Feb 2026
 13:11:53 -0800 (PST)
MIME-Version: 1.0
References: <20260226-iino-u64-v1-0-ccceff366db9@kernel.org> <20260226-iino-u64-v1-51-ccceff366db9@kernel.org>
In-Reply-To: <20260226-iino-u64-v1-51-ccceff366db9@kernel.org>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 26 Feb 2026 16:11:41 -0500
X-Gm-Features: AaiRm51CHDvKlRV2Z04ZUK5c4lU9AiJhpRFTzD6a70HHA0FgEKDqsojtRqG1Wpw
Message-ID: <CAHC9VhTPutzjNfYoRJigC2AQS4wz1A3vTEYn2koeR0kKetYk0w@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: paul@paul-moore.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QQNHIZ4MCCWWG4F2HEVAIAC3BFEBOFG5
X-Message-ID-Hash: QQNHIZ4MCCWWG4F2HEVAIAC3BFEBOFG5
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:02 +0000
CC: Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Dan Williams <dan.j.williams@intel.com>, Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>, David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>, Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>, Ronnie Sahlberg <ro
 nniesahlberg@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>, Bharath SM <bharathsm@microsoft.com>, Alexander Aring <alex.aring@gmail.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>, Viacheslav Dubeyko <slava@dubeyko.com>, Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>, David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>, Ian Kent <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>, Salah Triki <salah.triki@gmail.com>, "Tigran A. Aivazian" <aivazian.tigran@gmail.com>, Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>, Christoph Hellwig <hch@infradead.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Yangtao Li <frank.li@vivo.com>, Mikulas Patoc
 ka <mikulas@artax.karlin.mff.cuni.cz>, David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>, Dave Kleikamp <shaggy@kernel.org>, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>, Zhihao Cheng <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>, Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>, John Johansen <john.johansen@canonical.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosna
 ce@redhat.com>, Casey Schaufler <casey@schaufler-ca.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Eric Dumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@google.com>, Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>, Oleg Nesterov <oleg@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, "Darrick J. Wong" <djwong@kernel.org>, Martin Schiller
  <ms@dev.tdt.de>, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.o
 rg, linux-perf-users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 51/61] security: update audit format strings for u64 i_ino
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QQNHIZ4MCCWWG4F2HEVAIAC3BFEBOFG5/>
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
	DATE_IN_PAST(1.00)[1172];
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
	NEURAL_HAM(-0.00)[-0.550];
	RCPT_COUNT_GT_50(0.00)[145];
	FROM_NEQ_ENVFROM(0.00)[paul@paul-moore.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,namei.org,hallyn.com,linux.ibm.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,vger.kernel.org,lists.linux.dev,kvack.org,lists.sourceforge.net,lists.samba.org,lists.infradead.org,coda.cs.cmu.edu,lists.orangefs.org,lists.ubuntu.com,lists.freedesktop.org,lists.linaro.org,vger.kernel.o];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 2C0544126DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgMTE6MDbigK9BTSBKZWZmIExheXRvbiA8amxheXRvbkBr
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gVXBkYXRlICVsdS8lbGQgdG8gJWxsdS8lbGxkIGluIHNl
Y3VyaXR5IGF1ZGl0IGxvZ2dpbmcgZnVuY3Rpb25zIHRoYXQNCj4gcHJpbnQgaW5vZGUtPmlfaW5v
LCBzaW5jZSBpX2lubyBpcyBub3cgdTY0Lg0KPg0KPiBGaWxlcyB1cGRhdGVkOiBhcHBhcm1vci9h
cHBhcm1vcmZzLmMsIGludGVncml0eS9pbnRlZ3JpdHlfYXVkaXQuYywNCj4gaXBlL2F1ZGl0LmMs
IGxzbV9hdWRpdC5jLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmIExheXRvbiA8amxheXRvbkBr
ZXJuZWwub3JnPg0KPiAtLS0NCj4gIHNlY3VyaXR5L2FwcGFybW9yL2FwcGFybW9yZnMuYyAgICAg
ICB8ICA0ICsrLS0NCj4gIHNlY3VyaXR5L2ludGVncml0eS9pbnRlZ3JpdHlfYXVkaXQuYyB8ICAy
ICstDQo+ICBzZWN1cml0eS9pcGUvYXVkaXQuYyAgICAgICAgICAgICAgICAgfCAgMiArLQ0KPiAg
c2VjdXJpdHkvbHNtX2F1ZGl0LmMgICAgICAgICAgICAgICAgIHwgMTAgKysrKystLS0tLQ0KPiAg
c2VjdXJpdHkvc2VsaW51eC9ob29rcy5jICAgICAgICAgICAgIHwgIDQgKystLQ0KPiAgc2VjdXJp
dHkvc21hY2svc21hY2tfbHNtLmMgICAgICAgICAgIHwgMTIgKysrKysrLS0tLS0tDQo+ICA2IGZp
bGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KDQouLi4NCg0K
PiBkaWZmIC0tZ2l0IGEvc2VjdXJpdHkvbHNtX2F1ZGl0LmMgYi9zZWN1cml0eS9sc21fYXVkaXQu
Yw0KPiBpbmRleCA3ZDYyM2IwMDQ5NWMxNGIwNzllMTBlOTYzYzIxYTlmOTQ5YzExZjA3Li43Mzdm
NWEyNjNhOGY3OTQxNjEzMzMxNWVkZjM2M2VjZTNkNzljNzIyIDEwMDY0NA0KPiAtLS0gYS9zZWN1
cml0eS9sc21fYXVkaXQuYw0KPiArKysgYi9zZWN1cml0eS9sc21fYXVkaXQuYw0KDQpFdmVyeXRo
aW5nIGluIHNlY3VyaXR5L2xzbV9hdWRpdC5jIGxvb2tzIG9rYXkuDQoNCj4gZGlmZiAtLWdpdCBh
L3NlY3VyaXR5L3NlbGludXgvaG9va3MuYyBiL3NlY3VyaXR5L3NlbGludXgvaG9va3MuYw0KPiBp
bmRleCBkODIyNGVhMTEzZDFhYzI3M2FhYzFmYjUyMzI0ZjAwYjMzMDFhZTc1Li4xNTBlYTg2ZWJj
MWY3YzdmODM5MWFmNDEwOWEzZGE4MmIxMmQwMGQyIDEwMDY0NA0KPiAtLS0gYS9zZWN1cml0eS9z
ZWxpbnV4L2hvb2tzLmMNCj4gKysrIGIvc2VjdXJpdHkvc2VsaW51eC9ob29rcy5jDQo+IEBAIC0x
NDAwLDcgKzE0MDAsNyBAQCBzdGF0aWMgaW50IGlub2RlX2RvaW5pdF91c2VfeGF0dHIoc3RydWN0
IGlub2RlICppbm9kZSwgc3RydWN0IGRlbnRyeSAqZGVudHJ5LA0KPiAgICAgICAgIGlmIChyYyA8
IDApIHsNCj4gICAgICAgICAgICAgICAgIGtmcmVlKGNvbnRleHQpOw0KPiAgICAgICAgICAgICAg
ICAgaWYgKHJjICE9IC1FTk9EQVRBKSB7DQo+IC0gICAgICAgICAgICAgICAgICAgICAgIHByX3dh
cm4oIlNFTGludXg6ICVzOiAgZ2V0eGF0dHIgcmV0dXJuZWQgJWQgZm9yIGRldj0lcyBpbm89JWxk
XG4iLA0KPiArICAgICAgICAgICAgICAgICAgICAgICBwcl93YXJuKCJTRUxpbnV4OiAlczogIGdl
dHhhdHRyIHJldHVybmVkICVkIGZvciBkZXY9JXMgaW5vPSVsbGRcbiIsDQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgX19mdW5jX18sIC1yYywgaW5vZGUtPmlfc2ItPnNfaWQsIGlu
b2RlLT5pX2lubyk7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsNCj4gICAg
ICAgICAgICAgICAgIH0NCg0KQWRkaXRpb25hbGx5LCBsYXRlciBpbiB0aGlzIGZ1bmN0aW9uIHRo
ZXJlIGFyZSBwcl9ub3RpY2VfcmF0ZWxpbWl0ZWQoKQ0KYW5kIHByX3dhcm4oKSBjYWxscyB0aGF0
IHByaW50IGlub2RlIG51bWJlcnMgYW5kIG5lZWQgdG8gYmUgdXBkYXRlZC4NCg0KLS0gDQpwYXVs
LW1vb3JlLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==

Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f2fcAG0zUmpTNAMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 14:13:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEDF741797
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 14:13:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=cNKdE2b9;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50F6A40962
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 12:13:31 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	by lists.linaro.org (Postfix) with ESMTPS id EE8FE3F6E7
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Jul 2026 12:13:19 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-3856d4015e0so265668a91.2
        for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Jul 2026 05:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783771999; cv=none;
        d=google.com; s=arc-20260327;
        b=RB02ZjMog6eFn23AH3ubFGwu2eV1JDr70JeghTJ2TIfJuB4BYQ3SkJSzSRgI8HzJQw
         s1Z329gWzElOi3QFxQbV4DIDRGT9cCmmMeYjnL7OGKlNm94aCu1mVaP1AeY+4QilkerJ
         z5AkYOmy8PPa8vXDBYs7lS2lBksZC1Z/orBy8AxWH2V3Dow0vWDAU6O5KLQgHZiF0oH9
         cdG36YbC+cqGj0kfFcjGGLFWqK9sBF3MGD8Y4rTlbRPCQlzQaPQPoNlA+KG1SnXtfFWI
         royZRUKDHJNRx4yf9coodzilN3+ZQi/dM6NaHSAxmbVYrN4RhdP2K8iFpIHqgLK6T50W
         oMgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=80vo3JIjnCsKn8zo158HX4vkfRXd32w7uPzzJAtLaF0=;
        fh=FHr3g7Xtd2z4O/gX8zKSeZ79ItY27t3Ko1Rg1dGLouM=;
        b=SjVa08KB4TGT4AWihnFHz+RxplkhnVClyxcXV1pWecbBQeigaMF54LOTVrTKvf7KAs
         DIN7PacUQMpYbK4fMdSCJrRBUM5nVOr7zk+7iuFw7yEHgoySTPK6xi5eVNyDRPqbBcH4
         WpmrjzqsPgBT68BkQ1eVS7/Eunwp8sXOY+SUL+AZRIXtiqA+WM/yydK+dg29i+xqC5wG
         V+GCTfhuIRpFZvpWUBVe6JVuGlvZwU8BellaSS+L7Vz3lGOmqa4sMl2rHwQEaOvKiNKz
         yWONmx6kNxR8/pj3D4JrxuOnH5yGOZEs8T+nK8QX4EvHb5EqhN4jmnkTtiBX3jbX31xS
         RLHQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783771999; x=1784376799; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=80vo3JIjnCsKn8zo158HX4vkfRXd32w7uPzzJAtLaF0=;
        b=cNKdE2b9IQX2fYODY2Ya8DBrMoCklnPPRiPeQsf5tUIW+X0xNA9UUIrDozEDaK2VoG
         eVPElI8A5FrV4pDpP0A5XRV5N5z3CONBsOcPeDU1vikp+fAIQ2mnno3Jorm3MPFrQQus
         PoWW2I8k2LopoKA95DUjaLSmENhaQyUWRjo704zpgnaRTn98TJJAdMUy1AEsLjvpqTxk
         Kgs+bClBEX5+LA2ZzndnIh35/sjR8T4ZYEfb80UzaC5wDFLWaV5FzUWKuNEBe1rc351w
         xWmnE0j15csGjyr85nTfp2zY2dXwDdeQMaebf29S73RgSkkiE2gHB55PGzuuprylY7Ac
         ElRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783771999; x=1784376799;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=80vo3JIjnCsKn8zo158HX4vkfRXd32w7uPzzJAtLaF0=;
        b=f75mKu/w2T6xZTbS5l4zuHn0JxYXCI/nQc1IYEnniP3GkDnEgZIkhllPlGTTgN05hj
         kEVjyDF6skjciBWCzqA53INo9HFKrsQH9KWdDUYO39gYuHn+xpHHigLIszeoAuyzokNX
         M8mMBPzKD4nSaiSeFviV5x1N/WIwYz7sfQtSYIFVnQbiVGe4tejHKJnmif43OnRmOm5h
         6Mct2D2qv+JaquyqCHDsvwdgJVyGmHAmayU1geXKUWyuxmMmpTHl8DlNOTc4DDskUJCr
         oos43rbTFqm8v947C16QCx/8fuUCX3FByAfRVvULRsOHk9yawoUamUOt39OgVz7K+q3X
         wZEw==
X-Forwarded-Encrypted: i=1; AHgh+RqeFS9qKjZS3KNkQtg67sP4ueCAzsQOC10/jcHCLkO6tzDVAOJGZhTas/F6dlSaH8h6195oTvWOLeT7zrtZ@lists.linaro.org
X-Gm-Message-State: AOJu0YxDBlYb/V6uazjtp35PBkYw4Z9mYliWevrI4ijgd3oWlMjMrqLk
	gqIgc6egd4WmB2kGBYvZnm8TzZiUhaINzqZLC6ylt3YaF5b0DSb13ViruJbot3GAsku0QEP76cr
	ovkbqEwEbHs6SOirB8bVH58nZNzOiJJc=
X-Gm-Gg: AfdE7cmI7HJe7TDqipCN+T7ekHFP3GaaOiEa48IxwNI4OjiJRYGrBFAph7/AjnHuskI
	n8Y/OoxQ6rxStZWZs9l9ms3rt25LptWVlpQZ5gsy8ooqLgf+nOoxKYgK6xG5R5wOifIEupZowzY
	Fkel0FcHpGqT5N5t8w2gvoWnBN1+6fGjgheoSvdFRp9FAO8xUwmPsx2C4Jv8SAJqWHAomSzhDAY
	NZcIJj56FW8UGpmU9FgBuy/3y8FSscL5+KSlC37J3KSxB7OVBJjVWNOgQJ4htovXh+nsllR9HKK
	xVn7wsAk3U9svBMjonOHsn+1kHjPHSceOeedD3ec5X5YI5X19LzTsFViEuFbIMZFyjoAQQU7pbD
	b7zK20F7x5xiL
X-Received: by 2002:a17:90b:4984:b0:380:9cd1:d985 with SMTP id
 98e67ed59e1d1-38dc7c111a8mr1909664a91.6.1783771998816; Sat, 11 Jul 2026
 05:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260706061928.66713-1-byungchul@sk.com> <20260706061928.66713-40-byungchul@sk.com>
In-Reply-To: <20260706061928.66713-40-byungchul@sk.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 11 Jul 2026 14:13:05 +0200
X-Gm-Features: AUfX_mwWK6GqFCLIKCx9ivosmcno3i0b64L6R15FyNFXSSwj0HKdZlNefQKWcgc
Message-ID: <CANiq72kEo=bGcHNaSA9JZhv4iuE+YDvu0kN+Z7aopVp3=2C+Wg@mail.gmail.com>
To: Byungchul Park <byungchul@sk.com>, Gary Guo <gary@garyguo.net>
X-Spamd-Bar: ---
Message-ID-Hash: WWPF3AU4QNJGM4A5CGWMJIEUOFNYYEJ3
X-Message-ID-Hash: WWPF3AU4QNJGM4A5CGWMJIEUOFNYYEJ3
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, max.byungchul.park@gmail.com, kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.c
 om, hch@infradead.org, djwong@kernel.org, dri-devel@lists.freedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@l
 inux.dev, juri.lelli@redhat.com, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutroni
 x.de, oleg@redhat.com, mjguzik@gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, neilb@ownmail.net, bagasdotme@gmail.com, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v19 39/40] rust: completion: Add __rust_helper to rust_helper_wait_for_completion()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WWPF3AU4QNJGM4A5CGWMJIEUOFNYYEJ3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:byungchul@sk.com,m:gary@garyguo.net,m:linux-kernel@vger.kernel.org,m:max.byungchul.park@gmail.com,m:kernel_team@skhynix.com,m:torvalds@linux-foundation.org,m:damien.lemoal@opensource.wdc.com,m:linux-ide@vger.kernel.org,m:adilger.kernel@dilger.ca,m:linux-ext4@vger.kernel.org,m:mingo@redhat.com,m:peterz@infradead.org,m:will@kernel.org,m:tglx@linutronix.de,m:rostedt@goodmis.org,m:joel@joelfernandes.org,m:sashal@kernel.org,m:daniel.vetter@ffwll.ch,m:duyuyang@gmail.com,m:johannes.berg@intel.com,m:tj@kernel.org,m:tytso@mit.edu,m:willy@infradead.org,m:david@fromorbit.com,m:amir73il@gmail.com,m:gregkh@linuxfoundation.org,m:kernel-team@lge.com,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:mhocko@kernel.org,m:minchan@kernel.org,m:hannes@cmpxchg.org,m:vdavydov.dev@gmail.com,m:sj@kernel.org,m:jglisse@redhat.com,m:dennis@kernel.org,m:cl@linux.com,m:penberg@kernel.org,m:rientjes@google.com,m:vbabka@suse.cz,m:ngupta@vflare.org,m:linux-block@vger.kernel.org,m:josef@to
 xicpanda.com,m:linux-fsdevel@vger.kernel.org,m:jack@suse.cz,m:jlayton@kernel.org,m:dan.j.williams@intel.c,m:hch@infradead.org,m:djwong@kernel.org,m:dri-devel@lists.freedesktop.org,m:rodrigosiqueiramelo@gmail.com,m:melissa.srw@gmail.com,m:hamohammed.sa@gmail.com,m:harry.yoo@oracle.com,m:chris.p.wilson@intel.com,m:gwan-gyeong.mun@intel.com,m:boqun.feng@gmail.com,m:longman@redhat.com,m:yunseong.kim@ericsson.com,m:ysk@kzalloc.com,m:yeoreum.yun@arm.com,m:netdev@vger.kernel.org,m:matthew.brost@intel.com,m:her0gyugyu@gmail.com,m:corbet@lwn.net,m:catalin.marinas@arm.com,m:bp@alien8.de,m:x86@kernel.org,m:hpa@zytor.com,m:luto@kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:andi.shyti@kernel.org,m:arnd@arndb.de,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:rppt@kernel.org,m:surenb@google.com,m:mcgrof@kernel.org,m:petr.pavlu@suse.com,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@ker
 nel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@l,m:juri.lelli@redhat.com,m:vincent.guittot@linaro.org,m:dietmar.eggemann@arm.com,m:bsegall@google.com,m:mgorman@suse.de,m:vschneid@redhat.com,m:chuck.lever@oracle.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,skhynix.com,linux-foundation.org,opensource.wdc.com,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,intel.c,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,l,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.dev,linux.alibaba.com,glider.be,linux.intel.com,treblig.org,star-ark.net,valla.it,vivo.com,linutroni,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev,qq.com,ownmail.net,sang-engineering.com,linux-m68k.org,protonmail.com,umich.edu];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_GT_50(0.00)[165];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5CEDF741797

T24gTW9uLCBKdWwgNiwgMjAyNiBhdCA4OjIy4oCvQU0gQnl1bmdjaHVsIFBhcmsgPGJ5dW5nY2h1
bEBzay5jb20+IHdyb3RlOg0KPg0KPiBUaGlzIGlzIG5lZWRlZCB0byBpbmxpbmUgdGhlc2UgaGVs
cGVycyBpbnRvIFJ1c3QgY29kZSwgd2hpY2ggaXMgcmVxdWlyZWQNCj4gZm9yIERFUFQgdG8gcGxh
eSB3aXRoIHdhaXRfZm9yX2NvbXBsZXRpb24oKS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQnl1bmdj
aHVsIFBhcmsgPGJ5dW5nY2h1bEBzay5jb20+DQoNCkFwYXJ0IGZyb20gd2hhdCBHYXJ5IHNhaWQg
LS0gd2h5IGRpZCB5b3UgbmVlZCB0byBkbyB0aGlzIGluIGEgc2VwYXJhdGUNCnBhdGNoIGluIHRo
ZSBzYW1lIHNlcmllcz8NCg0KQ2hlZXJzLA0KTWlndWVsDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK

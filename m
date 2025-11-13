Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLkwFg784GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A361410510
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:11:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5A293F73B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:11:08 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id CAA563F7E7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 01:21:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com
X-AuditID: a67dfc5b-c45ff70000001609-3b-691532ad56c5
Date: Thu, 13 Nov 2025 10:21:44 +0900
From: Byungchul Park <byungchul@sk.com>
To: Danilo Krummrich <dakr@kernel.org>
Message-ID: <20251113012144.GB75428@system.software.com>
References: <20251002081247.51255-37-byungchul@sk.com>
 <tencent_13F1EDE0D6B7A44697F31AE274C8E664E908@qq.com>
 <DD7RK3CJOYMR.24WFU9NPUEX96@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DD7RK3CJOYMR.24WFU9NPUEX96@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf0yMcRzHfZ/v86vjtsep+Sqb7SysEVrsYwybxXeGCRvDxjM90zPXaRcp
	hkSWFML8KCH0Q+5kXYRFuUyH2kpNzxSFunVSfl1nxE0Xxn/vvT6fvd6fPz4iNti4YFE1b1Ms
	Ztlk5HWsrndE/hRbRJA67ZI3FNLT9kJbeycHP3MrBHC2pLLQcP0agvb+dARfB3IxaA1VGKzl
	+xg47d7HQs+pjzw01vUg2H+5lIeKlA4BPM2vGbBmujA03T3HQ2v9UQEKWhoZeN2hcWCvr8Pg
	PRICDdlZHGjHuhDY+i7xcKLPhaDHW4ihsP+DAFcvFCG4WZWG4PMVLwsHv/g4qM2qZqDA04eh
	1FWD4c2RXgHSH3oxHGibAXme6eC5VsLPn0St562IFjx9z9Mrh74z9E7OS4FeLNtO7cVh9HKl
	m6FlJYd4mj/QjWnb80qeOs8MsLQqzyrQVt9bTD91vWBp5sEyhr5w2bjlQWt1c2IUk5qoWKbO
	3aiLddUcRvHPuKTz7i42BdWwGShAJFIkOZl1V/ibtUYb78+sFEqOv20f4rw0kWjaN5yBRDFQ
	mkAy6qMzkE7EUrlA7BU92L8zSlpPsu9kIn/WS0B8N0o4fzZIZxB55Iz+zUeSx2c7h3qxFEY0
	n5vxO7EUQop8oh8HDJ5QfrppSBkkjSfVt2oZfxeRmkWSa6/7c/MY8qBYY48hKec/bc5/2px/
	2osIlyCDak6Mk1VTZHhssllNCt+0Na4MDT5R4e4f626jzw0rHUgSkXGEvvtsoGrg5MSE5DgH
	IiI2Bupvrh5E+hg5eadi2brBst2kJDhQiMgaR+sjvDtiDNJmeZuyRVHiFcvfKSMGBKegyZXL
	56W55QhaKvVfeDWPfXdrXFGTobvtwJJJKyyK6WFQVMBMwR4cfn/BsGUDjtlra8wtex4Xpcrq
	lJWzirNHDr+e+SU/OlK3NCq1d/ji6FGzPKtwc+2bRTFPPp5YWN1575Raz6c4ZZ9Drd4Sqjk7
	asemr45qjQ/O81zthDVJu3YZ2YRYeXoYtiTIvwCI95BPQAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0iTcRTG+b//9+Zq8La03tQMFppJWUbGgcT65r+gix9KiChHvuRwrtjU
	UpK0i+matyK1lZWlVrqlzVtJpGioXQTNLkMts3JlM7utRVojZ0R++/Gc8zzn+XB4rMhnfHm1
	NknSaVUaJSujZZvXHl1uWeWjXvmgdRZkHz8Mg0NvGfh9romDrudHaOi5UY1g6Hs2gh+T5zDY
	elowmOszKSgezaTBUfSZhd5HDgRHr9Sw0F56n4GmjFccOJ8MU2A22jH0NZ9nYaA7n4OK570U
	DL+yMVDX/QiDK88PegpzGbAVjCCwjF9m4fS4HYHDVYmh8vsnDq5fvIqgoeU4gq/lLhqyvrkZ
	6MxtpaDCOY6hxt6O4XXeRw6y77kwHBsMh1JnGDirq9j1S4n5ghmRiodjLCnPmaDIbdMLjlyy
	JpO6ayHkyp1RilirclhSNvkek8Fnd1jSVTJJk5ZSM0cG3G8w+TLSTxNjlpUi/XYLs3XeDllE
	nKRRp0i6FZGxsnh7+0m0/zFz8MLoCJ2B2mkD8uJFYbVo67WwHqaFQPHUmyHOw6ywRLTZfmID
	4nlvIUg0dEcbkIzHQj0n1jU5sGdnrrBTLLxtRB6WCyC6a6sYDyuEEiR2dEX/1eeI98++nb6F
	hRDR5h6lPJlY8BOvunmP7DVVob64bzrSR1gstjZ2UgVIbprhNs1wm/67LyFchbzV2pRElVoT
	HqpPiE/Vqg+G7tmXaEVTb1KZ/qvwFnL2RbUhgUfK2XIy7q1WMKoUfWpiGxJ5rPSWN8RMSfI4
	VWqapNu3W5eskfRtyI+nlfPlG2OkWIWwV5UkJUjSfkn3b0rxXr4ZqKa2V7YpqHkLWZB8svrM
	IadRXvTZ6Fvttf2uJSrIejO4MckxO7AjNvKd7p4hIiCBXFy0LbL4SH/t1jUnnpRL3IfmjJyy
	kYGJMbmPaVVPf3Ht7qJl+cHD7K4DMXxj2Ia02NTryxob6rI6XNqIkomAseinFf6aidaFH/ue
	6V6mK/zXKWl9vCosBOv0qj8bQDGJIgMAAA==
X-CFilter-Loop: Reflected
X-Spamd-Bar: -
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BUOBG6CYYCW2LNTFWG2CGEADAIDOIV2Z
X-Message-ID-Hash: BUOBG6CYYCW2LNTFWG2CGEADAIDOIV2Z
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:53:35 +0000
CC: Guangbo Cui <2407018371@qq.com>, Liam.Howlett@oracle.com, amir73il@gmail.com, andi.shyti@kernel.org, andrii@kernel.org, boqun.feng@gmail.com, bsegall@google.com, gregkh@linuxfoundation.org, linaro-mm-sig@lists.linaro.org, link@vivo.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com, masahiroy@kernel.org, mathieu.desnoyers@efficios.com, matthew.brost@intel.com, max.byungchul.park@gmail.com, mcgrof@kernel.org, melissa.srw@gmail.com, mgorman@suse.de, mhocko@kernel.org, minchan@kernel.org, oleg@redhat.com, paulmck@kernel.org, penberg@kernel.org, peterz@infradead.org, petr.pavlu@suse.com, torvalds@linux-foundation.org, vincent.guittot@linaro.org, will@kernel.org, yeoreum.yun@arm.com, ysk@kzalloc.com, rust-for-linux@vger.kernel.org, ojeda@kernel.org, gary@garyguo.net, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, alex.gaynor@gmail.com, bjorn3_gh@protonmail.com, kernel_team@skhynix.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] rust: bindings: add `rust_helper_wait_for_completion` helper function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BUOBG6CYYCW2LNTFWG2CGEADAIDOIV2Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3709];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[sk.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[qq.com,oracle.com,gmail.com,kernel.org,google.com,linuxfoundation.org,lists.linaro.org,vivo.com,vger.kernel.org,arm.com,efficios.com,intel.com,suse.de,redhat.com,infradead.org,suse.com,linux-foundation.org,linaro.org,kzalloc.com,garyguo.net,protonmail.com,skhynix.com];
	NEURAL_HAM(-0.00)[-0.966];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,system.software.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 2A361410510
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Oct 02, 2025 at 12:27:53PM +0200, Danilo Krummrich wrote:
> On Thu Oct 2, 2025 at 12:06 PM CEST, Guangbo Cui wrote:
> > The DEPT patch series changed `wait_for_completion` into a macro.
> > Because bindgen cannot handle function-like macros, this caused
> > Rust build errors. Add a helper function to fix it.
> 
> Good catch!
> 
> Given that the latest version of this series was just posted, please squash this
> fix into patch "dept: assign unique dept_key to each distinct
> wait_for_completion() caller" [1].

Thank you all.  I will squash this into the patch.  Thanks again!

	Byungchul
> 
> Thanks,
> Danilo
> 
> [1] https://lore.kernel.org/all/20251002081247.51255-37-byungchul@sk.com/
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

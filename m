Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEwvOYP+4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:21:39 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A30E341092B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:21:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AA58A404F9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:21:37 +0000 (UTC)
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
	by lists.linaro.org (Postfix) with ESMTP id 4648B3F90B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 09:38:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of byungchul@sk.com designates 166.125.252.92 as permitted sender) smtp.mailfrom=byungchul@sk.com;
	dmarc=none
X-AuditID: a67dfc5b-c2dff70000001609-b3-691d901b1ebc
Date: Wed, 19 Nov 2025 18:38:29 +0900
From: Byungchul Park <byungchul@sk.com>
To: Boqun Feng <boqun.feng@gmail.com>
Message-ID: <20251119093829.GA20446@system.software.com>
References: <20251002081247.51255-37-byungchul@sk.com>
 <tencent_13F1EDE0D6B7A44697F31AE274C8E664E908@qq.com>
 <aN62F8t493R7UmCT@tardis.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aN62F8t493R7UmCT@tardis.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRiA+853bg5Xp6X05SpoEal0p+LtQuiP7IP+BBFEFjXykKupualp
	ENnN5rKaJF0su85Lc6Zo94TVEjO6LboNt9JsrcS0NFuXleTpQv17eN+Hh/fHK2KNk4sRDelZ
	sildb9TxKlbVHXlqstY2xjCtvGQcWHZtBX9bgIMfRy8J0PJsOwuec9UI2j5ZEHwOH8Xg9bgw
	OM9vY+BQ5zYWug5+4OHh3S4EO87U8nApv12A/scvGXAWBTE8unqMB9+9/QKUP3vIwMt2LwcN
	9+5iCO3Tgqd4Lwde22sENT2neTjQE0TQFarAUPHpvQBnT1QiuODahaDPHmKh4OMAB7f2Xmeg
	vL8HQ23wJoaOfd0CWJpCGHb6Z0FZ/3Tor3bwCbHUedyJaPmddzy1F35j6JXS5wI9WZ9NG6ri
	6ZnGTobWOwp5eir8FlP/00aethwOs9RV5hSob+AVpr2vW1laVFDP0NZgDbckeoVqfopsNOTI
	pqkL1qhSqx8cQxt943Ob7feZfBSOsSJRJNJM0uZabkURv/BF2C8ozEoTSNPTDqQwL00kXu9X
	rOhRg3O7Y1BXiViqFchFq4VTnBHSSlJ8peiXr5aAtPmu8YqkkWyINH388mcxnNw+EmAVxlI8
	8Q50MkoUS1pSOSAqGCFNIo+tqxUjWhpPrl+8xSgZInlEcrg5xP2+cxS5UeVlbUgq/a9a+l+1
	9F/1JMIOpDGk56TpDcaZU1Lz0g25U9ZmpNWjwR+q2PI9+TLq8yx1I0lEuki1ZdgYg4bT55jz
	0tyIiFgXpZ6QONqgUafo8zbLpozVpmyjbHYjrcjqRqpnhDalaKR1+ix5gyxvlE1/t4wYEZOP
	ktZGtycXc4lZeOrizGlLzPjIsKXbgzvQoj199vaCoSeicpvfuIPPj4dq3CldB54sexvfqZ3T
	sbM7SZPhaZFLEoU6TW+Dr9ExfF7roYV0bmHs+dlxzrhAFcQGeofsnnU/IfNBXOSL9Z/rbpdF
	nx4yVkyYnGrOto5jO+pWjfRnBhboWHOqfno8Npn1PwEMJX1DPwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTcRjG+Z//uTlanJbWaRbWxC5aZpDwQlH5xQ4SEd2RSEeecjVXbSau
	iDSbzHmbBF00y9JpzZmwvHQDSyWVLmpmDmeapZJZdnGpNZVcFPntx/P8nvfTy2JZNiVnVZp4
	UatRqhW0hJRsXZeyyte8SBUyPMiC0XAGunr6KJjMq2agseMsCS23SxH0/DAiGHPnYXC01GCw
	VSQTcHEwmYShC19paH02hCClsJyGuvwmCqqT3jLgetVLgC1jAEPb/Ss0OJ9nM2DpaCWg962D
	gjvPn2EYzfKFlpxMChzmfgRlwzdoOD88gGBotBhD8Y8vDNy6VoKgssaA4HvRKAmpI1MUNGQ+
	IsDiGsZQPlCH4V3WZwaM9aMYznWFQr5rDbhKrfSmFYLtqg0JlqefaKEo7Rch3Mt9wwgF9hPC
	nZuBQuHDQUKwW9No4br7Axa6Xj+khcZLblKoybcxgnPqPRa+9XeSQkaqnRA6B8qobfMiJetj
	RLUqQdSu3hAtiS1tvoKOOf0TnxS9IJKQW25CXizPreW73V2Mh0kugK9//Q55mOaW8Q7HT2xC
	LOs9nRdZ95qQhMVcOcNXmYyUx5nL7eNz7mX88aUc8D3OB7RHknFmxNePjP8t5vBNl/tID2Mu
	kHdMDRKeo5jz5UumWA96cSv5V6Yoj+HD+fOPqhoIM5Lmzhjnzhjn/h8XIGxF3ipNQpxSpQ4N
	1h2J1WtUicEHjsbZ0fSbFJ+eyLmLXG2baxHHIsUs6bh5oUpGKRN0+rhaxLNY4S0NCJuOpDFK
	/UlRezRKe0It6mqRL0sq5ksj9ojRMu6QMl48IorHRO2/lmC95EmouzEp6sBE75b2oNnpzg59
	X3CZZrJspykshBmPjz/uc9L2uLlyCZkuqgwyd0/mrpGXh3Tb6U+FY0sTw2OC+PY5hl1a53Y/
	fYn/fl1yZHtTTOWlrMOJbZ2XFyyvWNCt9jPId0emf7wdtvKg5ZRx44WIAG19+OKxzpAlLdaD
	Fn32zR0KUherXBOItTrlbzb9/H8iAwAA
X-CFilter-Loop: Reflected
X-Spamd-Bar: ---
X-MailFrom: byungchul@sk.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UQXVPJXQMJDG7GMJEJCFD2LRBGVHPXCR
X-Message-ID-Hash: UQXVPJXQMJDG7GMJEJCFD2LRBGVHPXCR
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:00:51 +0000
CC: Guangbo Cui <2407018371@qq.com>, Liam.Howlett@oracle.com, amir73il@gmail.com, andi.shyti@kernel.org, andrii@kernel.org, bsegall@google.com, gregkh@linuxfoundation.org, linaro-mm-sig@lists.linaro.org, link@vivo.com, linux-kernel@vger.kernel.org, mark.rutland@arm.com, masahiroy@kernel.org, mathieu.desnoyers@efficios.com, matthew.brost@intel.com, max.byungchul.park@gmail.com, mcgrof@kernel.org, melissa.srw@gmail.com, mgorman@suse.de, mhocko@kernel.org, minchan@kernel.org, oleg@redhat.com, paulmck@kernel.org, penberg@kernel.org, peterz@infradead.org, petr.pavlu@suse.com, torvalds@linux-foundation.org, vincent.guittot@linaro.org, will@kernel.org, yeoreum.yun@arm.com, ysk@kzalloc.com, rust-for-linux@vger.kernel.org, ojeda@kernel.org, gary@garyguo.net, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, dakr@kernel.org, alex.gaynor@gmail.com, bjorn3_gh@protonmail.com, kernel_team@skhynix.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] rust: bindings: add `rust_helper_wait_for_completion` helper function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UQXVPJXQMJDG7GMJEJCFD2LRBGVHPXCR/>
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
	DATE_IN_PAST(1.00)[3557];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[sk.com];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[qq.com,oracle.com,gmail.com,kernel.org,google.com,linuxfoundation.org,lists.linaro.org,vivo.com,vger.kernel.org,arm.com,efficios.com,intel.com,suse.de,redhat.com,infradead.org,suse.com,linux-foundation.org,linaro.org,kzalloc.com,garyguo.net,protonmail.com,skhynix.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[byungchul@sk.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.966];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,system.software.com:mid,qq.com:email,linaro.org:email]
X-Rspamd-Queue-Id: A30E341092B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Oct 02, 2025 at 10:27:51AM -0700, Boqun Feng wrote:
> On Thu, Oct 02, 2025 at 10:06:17AM +0000, Guangbo Cui wrote:
> > > -extern void wait_for_completion(struct completion *);
> > > -extern void wait_for_completion_io(struct completion *);
> > > -extern int wait_for_completion_interruptible(struct completion *x);
> > > -extern int wait_for_completion_killable(struct completion *x);
> > > -extern int wait_for_completion_state(struct completion *x, unsigned int state);
> > > -extern unsigned long wait_for_completion_timeout(struct completion *x,
> > > +extern void __wait_for_completion(struct completion *);
> > > +extern void __wait_for_completion_io(struct completion *);
> > > +extern int __wait_for_completion_interruptible(struct completion *x);
> > > +extern int __wait_for_completion_killable(struct completion *x);
> > > +extern int __wait_for_completion_state(struct completion *x, unsigned int state);
> > > +extern unsigned long __wait_for_completion_timeout(struct completion *x,
> > >                                                unsigned long timeout);
> > > -extern unsigned long wait_for_completion_io_timeout(struct completion *x,
> > > +extern unsigned long __wait_for_completion_io_timeout(struct completion *x,
> > >                                                 unsigned long timeout);
> > > -extern long wait_for_completion_interruptible_timeout(
> > > +extern long __wait_for_completion_interruptible_timeout(
> > >     struct completion *x, unsigned long timeout);
> > > -extern long wait_for_completion_killable_timeout(
> > > +extern long __wait_for_completion_killable_timeout(
> > >     struct completion *x, unsigned long timeout);
> > >  extern bool try_wait_for_completion(struct completion *x);
> > >  extern bool completion_done(struct completion *x);
> > > @@ -139,4 +134,79 @@ extern void complete(struct completion *);
> > >  extern void complete_on_current_cpu(struct completion *x);
> > >  extern void complete_all(struct completion *);
> > >
> > > +#define wait_for_completion(x)                                             \
> > > +({                                                                 \
> > > +   sdt_might_sleep_start_timeout(NULL, -1L);                       \
> > > +   __wait_for_completion(x);                                       \
> > > +   sdt_might_sleep_end();                                          \
> > > +})
> >
> > The DEPT patch series changed `wait_for_completion` into a macro.
> > Because bindgen cannot handle function-like macros, this caused
> > Rust build errors. Add a helper function to fix it.
> >
> > ```
> > error[E0425]: cannot find function `wait_for_completion` in crate `bindings`
> >      --> rust/kernel/sync/completion.rs:110:28
> >       |
> >   110 |         unsafe { bindings::wait_for_completion(self.as_raw()) };
> >       |                            ^^^^^^^^^^^^^^^^^^^ help: a function with a similar name exists: `__wait_for_completion`
> >       |
> >      ::: /root/linux/rust/bindings/bindings_generated.rs:33440:5
> >       |
> > 33440 |     pub fn __wait_for_completion(arg1: *mut completion);
> >       |     ---------------------------------------------------- similarly named function `__wait_for_completion` defined here
> >
> > error: aborting due to 1 previous error
> >
> > For more information about this error, try `rustc --explain E0425`.
> > ```
> >
> 
> I think Danilo already made it clear, please fold this the existing
> patch. Moreover, since this patchset doesn't adjust init_completion()
> from the Rust side, the result is Rust code will also use the same dept
> key for completion, which has to be fixed if dept wants to be in-tree.

Right.  The same key in Rust may generate false positives.  However, for
now, I will keep the current code until finding ways to assign
appropriate keys in Rust.  Thanks anyway.

	Byungchul

> Regards,
> Boqun
> 
> > Signed-off-by: Guangbo Cui <2407018371@qq.com>
> > ---
> >  rust/helpers/completion.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/rust/helpers/completion.c b/rust/helpers/completion.c
> > index b2443262a2ae..5bae5e749def 100644
> > --- a/rust/helpers/completion.c
> > +++ b/rust/helpers/completion.c
> > @@ -6,3 +6,8 @@ void rust_helper_init_completion(struct completion *x)
> >  {
> >       init_completion(x);
> >  }
> > +
> > +void rust_helper_wait_for_completion(struct completion *x)
> > +{
> > +     wait_for_completion(x);
> > +}
> > --
> > 2.43.0
> >
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

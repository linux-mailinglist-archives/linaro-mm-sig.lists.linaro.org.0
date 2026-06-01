Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMDMJxpoHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:20:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 389D1628855
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:20:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 49E47409A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:20:25 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 45249404A3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 13:41:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="ZD/1qwUQ";
	spf=pass (lists.linaro.org: domain of boqun@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=boqun@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AE99A443D1;
	Mon,  1 Jun 2026 13:41:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F21B1F00899;
	Mon,  1 Jun 2026 13:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780321277;
	bh=Cy/Wx8iHE+k3tnhZgJfl2Qf8HrXMI7saH/g6ishR5cw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZD/1qwUQecSnKfTT66yrGOSNo8WOMEXQQQ9R3IbvQfQhjd651FrPeqeL9Sn+VJ3ax
	 BhVO0KmIo1FTz6s2UpPkb2oYSpR8G16KywEdVOf7XlNJOOsprbclirHrtIeOIh8XlD
	 9FTViaKyzZLTta5KwN4fdKsMj0UPdzR8r5vZi0M8mvA0GZOInaBEKLSfvnNsl/O878
	 L5K5x/D/fK50wEW7ei7xUvYiAUp1WNnHvvHfIHKWJoetIptRK+EuazavG0TZg0EMQC
	 bIJwzQ2KWq0h00FyAkNS2XmSfHclYfo2Ew+WkNKhCqg/GxdHYlj+Llt4JJHfAzw1tI
	 SibGx2RMqrrKQ==
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfauth.phl.internal (Postfix) with ESMTP id BA7BFF4008A;
	Mon,  1 Jun 2026 09:41:15 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Mon, 01 Jun 2026 09:41:15 -0400
X-ME-Sender: <xms:-4sdarzHZ6Vq9HtsOFeOO85MzAGI-Ah0vFhwMTBVZIvO-rjjhM5M3g>
    <xme:-4sdalq9FJxZ0-F_IItS9avqwcYvsI6ZePdHcjdKwhyQtRAzq80GCyEoeFZj14KxA
    rZw9xfOUUr9sCcPlvf5wM5h7Ug-qLjRbF-8leyFgb58_oUGZJuq>
X-ME-Received: <xmr:-4sdav7VT4VL2EfhcT26KxLioXm1vn5EArLtJ0_EXYRD-cYr7ZlUaHk1oL1T8Zhy0HI017nHtgidGp5xoBWdYKtWV5MO7I8cuQ>
X-ME-Proxy-Cause: dmFkZTEQx9WLyMJiwmRV/+uLnLi6x4tXtGJyKzl7rVMSP6cJN4a3LJQXrGvoa5s5QegsPj
    cBG9+VIEViyPnp9vQVotsHJtdGjqtL8FjYMeqtYA04kgCDQXIM0kLMdz+KfFxGn/jm2kHV
    UPnXdzWfZjVLyVBPSvBY72/HFGneZCGM2MkwQhN5CaUI8t2NuPJFNw0c4FeZxthAmhyRiv
    NN0aTXWc0JrQXjEClv0gxSkxg9jvRYyZeqON0CnaaBjd6BvKn/mQbMrHfoUJUig1DYbcUD
    XxkCwq+IvtsoGKWSaiESv2T4BxPHNSjkq4ZmvgZ7/OVZkTpvSG3l8Q7eAtkEZapasA3Rco
    tQ7QJ65HWT9eVssyAmvMK2peoVFi3X7P2LXRootOWWQ45mZ4ro3AWW/OvA4g7MF1Sf/jgP
    mBGJ2O81xU6Q4lsGyjn0nIMJN+CG9xgVjzeGgSgZQYQJM7XG7oQ6amNwo+5eGdcWoKNiYE
    Bi/DK+s1w/v6o4mdBq9vPdYSX+rsc5L50f3RnkZhV9On5d6fsJOXwS4FtcqG9bZGRmyUQA
    FJjm/HtDkgcrhhDS1LcKFDdQovY02T4TIBh1TpJvMCvl+aisTIozYS6Oz7JdstEJ14gIpx
    EAExkYvv/PzMdfThegFq1qzG2GVqxy80uwMbuMemZqJzsIOZnaJFjK0PpOOQ
X-ME-Proxy: <xmx:-4sdagC00o4l8d5ZXp0MOHiTuMek0dQUNf3hXe7v_xU6la8nXPt3kA>
    <xmx:-4sdal3oR2JPLGLZe81XDLAecgKlmBHwTTyMlkPsL-c0iw1kHSm3rg>
    <xmx:-4sdavZrr0U6gJ7bPYpk1cz8VGFwicN1CkhMOu3-ZsnFf9ouUMa0Bg>
    <xmx:-4sdap-lry_mBVdMIgF886GkdpB-LkVWd-DVIW-izB0N48WCQ8mWbw>
    <xmx:-4sdapOo-eGQE5QSonTMmvPTDYsc5Gw3FV2qQsXBiil_-0azbG9Hnwro>
Feedback-ID: i8dbe485b:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Jun 2026 09:41:15 -0400 (EDT)
Date: Mon, 1 Jun 2026 06:41:13 -0700
From: Boqun Feng <boqun@kernel.org>
To: phasta@kernel.org
Message-ID: <ah2L-TMT5UHSd_Hs@tardis-2.local>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-4-phasta@kernel.org>
 <ahr9gtzQLSbPeBx_@tardis.local>
 <e8b16f3b40d42f3b0a8814180fa9b06f82c9d901.camel@mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8b16f3b40d42f3b0a8814180fa9b06f82c9d901.camel@mailbox.org>
X-Spamd-Bar: ---
X-MailFrom: boqun@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U2ZLZDFHENH4J2HYZK356KBRWYY2LWPV
X-Message-ID-Hash: U2ZLZDFHENH4J2HYZK356KBRWYY2LWPV
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:18:19 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandr
 e Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] rust: rcu: add RcuBox type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U2ZLZDFHENH4J2HYZK356KBRWYY2LWPV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,tardis-2.local:mid];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[boqun@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.810];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 389D1628855
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Jun 01, 2026 at 09:56:23AM +0200, Philipp Stanner wrote:
> On Sat, 2026-05-30 at 08:08 -0700, Boqun Feng wrote:
> > On Sat, May 30, 2026 at 04:35:10PM +0200, Philipp Stanner wrote:
> > > From: Alice Ryhl <aliceryhl@google.com>
> > >=20
> > > This adds an RcuBox container, which is like KBox except that the val=
ue
> > > is freed with kfree_rcu.
> > >=20
> > > To allow containers to rely on the rcu properties of RcuBox, an
> > > extension of ForeignOwnable is added.
> > >=20
> > > Signed-off-by: Alice Ryhl <aliceryhl@google.com>
> > > ---
> >=20
> > I have the following on top of Alice's patch. @Alice, @Danilo, thoughts?
> >=20
> > Then we can have:
> >=20
> > type RcuKBox<T> =3D RcuBox<T, Kmalloc>;
> > type RcuVBox<T> =3D RcuBox<T, Vmalloc>;
>=20
> No objections by me.
>=20
> I just think we have to decide how the treat the namespaces, though.
> Probably Alice wrote it like that so that it's very apparent that this
> is not a normal box. It still breaks the naming convention in my
> opinion.
>=20
> rcu::Box vs rcu::RcuBox
>=20
> With all other subsystems, naming like that seems not allowed.
>=20
> dma::Fence vs dma::DmaFence
>=20
>=20
> I probably would allow the user to decide whether he wants to just use
> it as `rcu::Box` in all his code.
>=20
> But no hard feelings.
>=20

For this I think that rcu::RcuBox is a bit different than dma::Fence,
because Box has its widely-accepted meaning through all Rust code,
while `Fence` doesn't. Hence my current thought is rcu::RcuBox and
dma::Fence. My personal preference is using namespace as much as we
could until there might be some misleading.

>=20
>=20
> >=20
> > and Philipp can use the `RcuKBox` in this patchset. We also need to impl
> > InPlaceInit for RcuBox, but that can be added later.
>=20
> So shall we merge my series with Alice's patch, and later we add your
> patch and other features, or would you prefer to have the additional
> boxes from your patch from the get-go?
>=20

I would like to have it from the get-go mainly because of RcuBox vs
RcuKBox naming. Thank you!

Regards,
Boqun

>=20
> P.
>=20
> >=20
> > Regards,
> > Boqun
> >=20
> > ------------->8
> > Subject: [PATCH] rust: rcu: Make RcuBox generic over Allocator
> >=20
> > To support RCU-protected vmalloc allocation, we need to make `RcuBox`
> > generic over `Allocator`. Currently this works since all `Allocator`s
> > are either kmalloc() or vmalloc(), and kvfree_call_rcu() works with both
> > allocations.
> >=20
> > While we are at it, add some basic test cases.
> >=20
> > Signed-off-by: Boqun Feng <boqun@kernel.org>
> > ---
> > =A0rust/kernel/sync/rcu/rcu_box.rs | 96 +++++++++++++++++++++++--------=
--
> > =A01 file changed, 67 insertions(+), 29 deletions(-)
> >=20
> > diff --git a/rust/kernel/sync/rcu/rcu_box.rs b/rust/kernel/sync/rcu/rcu=
_box.rs
> > index 2508fdb609ec..5c344d82c0d9 100644
> > --- a/rust/kernel/sync/rcu/rcu_box.rs
> > +++ b/rust/kernel/sync/rcu/rcu_box.rs
> > @@ -4,47 +4,59 @@
> > =A0
> > =A0//! Provides the `RcuBox` type for Rust allocations that live for a =
grace period.
> > =A0
> > -use core::{ops::Deref, ptr::NonNull};
> > +use core::{
> > +=A0=A0=A0 marker::PhantomData,
> > +=A0=A0=A0 ops::Deref,
> > +=A0=A0=A0 ptr::NonNull, //
> > +};
> > =A0
> > =A0use kernel::{
> > -=A0=A0=A0 alloc::{self, AllocError},
> > +=A0=A0=A0 alloc::{
> > +=A0=A0=A0=A0=A0=A0=A0 self,
> > +=A0=A0=A0=A0=A0=A0=A0 AllocError,
> > +=A0=A0=A0=A0=A0=A0=A0 Allocator, //
> > +=A0=A0=A0 },
> > =A0=A0=A0=A0 bindings,
> > =A0=A0=A0=A0 ffi::c_void,
> > =A0=A0=A0=A0 prelude::*,
> > -=A0=A0=A0 sync::rcu::{ForeignOwnableRcu, Guard},
> > =A0=A0=A0=A0 types::ForeignOwnable,
> > =A0};
> > =A0
> > +use super::{
> > +=A0=A0=A0 ForeignOwnableRcu,
> > +=A0=A0=A0 Guard, //
> > +};
> > +
> > =A0/// A box that is freed with rcu.
> > =A0///
> > =A0/// The value must be `Send`, as rcu may drop it on another thread.
> > =A0///
> > =A0/// # Invariants
> > =A0///
> > -/// * The pointer is valid and references a pinned `RcuBoxInner<T>` al=
located with `kmalloc`.
> > +/// * The pointer is valid and references a pinned `RcuBoxInner<T>` al=
located with `A`.
> > =A0/// * This `RcuBox` holds exclusive permissions to rcu free the allo=
cation.
> > -pub struct RcuBox<T: Send>(NonNull<RcuBoxInner<T>>);
> > +pub struct RcuBox<T: Send, A: Allocator>(NonNull<RcuBoxInner<T>>, Phan=
tomData<A>);
> > =A0
> > =A0struct RcuBoxInner<T> {
> > =A0=A0=A0=A0 value: T,
> > =A0=A0=A0=A0 rcu_head: bindings::callback_head,
> > =A0}
> > =A0
> > -// Note that `T: Sync` is required since when moving an `RcuBox<T>`, t=
he previous owner may still
> > -// access `&T` for one grace period.
> > +// Note that `T: Sync` is required since when moving an `RcuBox<T, A>`=
, the previous owner may
> > +// still access `&T` for one grace period.
> > =A0//
> > -// SAFETY: Ownership of the `RcuBox<T>` allows for `&T` and dropping t=
he `T`, so `T: Send + Sync`
> > -// implies `RcuBox<T>: Send`.
> > -unsafe impl<T: Send + Sync> Send for RcuBox<T> {}
> > +// SAFETY: Ownership of the `RcuBox<T, A>` allows for `&T` and droppin=
g the `T`, so `T: Send +
> > +// Sync` implies `RcuBox<T, A>: Send`.
> > +unsafe impl<T: Send + Sync, A: Allocator> Send for RcuBox<T, A> {}
> > =A0
> > -// SAFETY: `&RcuBox<T>` allows for no operations other than those perm=
itted by `&T`, so `T: Sync`
> > -// implies `RcuBox<T>: Sync`.
> > -unsafe impl<T: Send + Sync> Sync for RcuBox<T> {}
> > +// SAFETY: `&RcuBox<T, A>` allows for no operations other than those p=
ermitted by `&T`, so `T:
> > +// Sync` implies `RcuBox<T, A>: Sync`.
> > +unsafe impl<T: Send + Sync, A: Allocator> Sync for RcuBox<T, A> {}
> > =A0
> > -impl<T: Send> RcuBox<T> {
> > +impl<T: Send, A: Allocator> RcuBox<T, A> {
> > =A0=A0=A0=A0 /// Create a new `RcuBox`.
> > =A0=A0=A0=A0 pub fn new(x: T, flags: alloc::Flags) -> Result<Self, Allo=
cError> {
> > -=A0=A0=A0=A0=A0=A0=A0 let b =3D KBox::new(
> > +=A0=A0=A0=A0=A0=A0=A0 let b =3D Box::<_, A>::new(
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 RcuBoxInner {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 value: x,
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rcu_head: Default::def=
ault(),
> > @@ -53,9 +65,9 @@ pub fn new(x: T, flags: alloc::Flags) -> Result<Self,=
 AllocError> {
> > =A0=A0=A0=A0=A0=A0=A0=A0 )?;
> > =A0
> > =A0=A0=A0=A0=A0=A0=A0=A0 // INVARIANT:
> > -=A0=A0=A0=A0=A0=A0=A0 // * The pointer contains a valid `RcuBoxInner` =
allocated with `kmalloc`.
> > +=A0=A0=A0=A0=A0=A0=A0 // * The pointer contains a valid `RcuBoxInner` =
allocated with `A`.
> > =A0=A0=A0=A0=A0=A0=A0=A0 // * We just allocated it, so we own free perm=
issions.
> > -=A0=A0=A0=A0=A0=A0=A0 Ok(RcuBox(NonNull::from(KBox::leak(b))))
> > +=A0=A0=A0=A0=A0=A0=A0 Ok(RcuBox(NonNull::from(Box::leak(b)), PhantomDa=
ta))
> > =A0=A0=A0=A0 }
> > =A0
> > =A0=A0=A0=A0 /// Access the value for a grace period.
> > @@ -66,7 +78,7 @@ pub fn with_rcu<'rcu>(&self, _read_guard: &'rcu Guard=
) -> &'rcu T {
> > =A0=A0=A0=A0 }
> > =A0}
> > =A0
> > -impl<T: Send> Deref for RcuBox<T> {
> > +impl<T: Send, A: Allocator> Deref for RcuBox<T, A> {
> > =A0=A0=A0=A0 type Target =3D T;
> > =A0=A0=A0=A0 fn deref(&self) -> &T {
> > =A0=A0=A0=A0=A0=A0=A0=A0 // SAFETY: While the `RcuBox<T>` exists, the v=
alue remains valid.
> > @@ -75,10 +87,10 @@ fn deref(&self) -> &T {
> > =A0}
> > =A0
> > =A0// SAFETY:
> > -// * The `RcuBoxInner<T>` was allocated with `kmalloc`.
> > +// * The `RcuBoxInner<T>` was allocated with `A`.
> > =A0// * `NonNull::as_ptr` returns a non-null pointer.
> > -unsafe impl<T: Send + 'static> ForeignOwnable for RcuBox<T> {
> > -=A0=A0=A0 const FOREIGN_ALIGN: usize =3D <KBox<RcuBoxInner<T>> as Fore=
ignOwnable>::FOREIGN_ALIGN;
> > +unsafe impl<T: Send + 'static, A: Allocator> ForeignOwnable for RcuBox=
<T, A> {
> > +=A0=A0=A0 const FOREIGN_ALIGN: usize =3D <Box<RcuBoxInner<T>, A> as Fo=
reignOwnable>::FOREIGN_ALIGN;
> > =A0
> > =A0=A0=A0=A0 type Borrowed<'a> =3D &'a T;
> > =A0=A0=A0=A0 type BorrowedMut<'a> =3D &'a T;
> > @@ -88,9 +100,9 @@ fn into_foreign(self) -> *mut c_void {
> > =A0=A0=A0=A0 }
> > =A0
> > =A0=A0=A0=A0 unsafe fn from_foreign(ptr: *mut c_void) -> Self {
> > -=A0=A0=A0=A0=A0=A0=A0 // INVARIANT: Pointer returned by `into_foreign`=
 carries same invariants as `RcuBox<T>`.
> > +=A0=A0=A0=A0=A0=A0=A0 // INVARIANT: Pointer returned by `into_foreign,=
 A` carries same invariants as `RcuBox<T>`.
> > =A0=A0=A0=A0=A0=A0=A0=A0 // SAFETY: `into_foreign` never returns a null=
 pointer.
> > -=A0=A0=A0=A0=A0=A0=A0 Self(unsafe { NonNull::new_unchecked(ptr.cast())=
 })
> > +=A0=A0=A0=A0=A0=A0=A0 Self(unsafe { NonNull::new_unchecked(ptr.cast())=
 }, PhantomData)
> > =A0=A0=A0=A0 }
> > =A0
> > =A0=A0=A0=A0 unsafe fn borrow<'a>(ptr: *mut c_void) -> &'a T {
> > @@ -104,7 +116,7 @@ unsafe fn borrow_mut<'a>(ptr: *mut c_void) -> &'a T=
 {
> > =A0=A0=A0=A0 }
> > =A0}
> > =A0
> > -impl<T: Send + 'static> ForeignOwnableRcu for RcuBox<T> {
> > +impl<T: Send + 'static, A: Allocator> ForeignOwnableRcu for RcuBox<T, =
A> {
> > =A0=A0=A0=A0 type RcuBorrowed<'a> =3D &'a T;
> > =A0
> > =A0=A0=A0=A0 unsafe fn rcu_borrow<'a>(ptr: *mut c_void) -> &'a T {
> > @@ -114,7 +126,7 @@ unsafe fn rcu_borrow<'a>(ptr: *mut c_void) -> &'a T=
 {
> > =A0=A0=A0=A0 }
> > =A0}
> > =A0
> > -impl<T: Send> Drop for RcuBox<T> {
> > +impl<T: Send, A: Allocator> Drop for RcuBox<T, A> {
> > =A0=A0=A0=A0 fn drop(&mut self) {
> > =A0=A0=A0=A0=A0=A0=A0=A0 // SAFETY: The `rcu_head` field is in-bounds o=
f a valid allocation.
> > =A0=A0=A0=A0=A0=A0=A0=A0 let rcu_head =3D unsafe { &raw mut (*self.0.as=
_ptr()).rcu_head };
> > @@ -122,9 +134,11 @@ fn drop(&mut self) {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // SAFETY: `rcu_head` is the `rcu_=
head` field of `RcuBoxInner<T>`. All users will be
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // gone in an rcu grace period. Th=
is is the destructor, so we may pass ownership of the
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // allocation.
> > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unsafe { bindings::call_rcu(rcu_head=
, Some(drop_rcu_box::<T>)) };
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unsafe { bindings::call_rcu(rcu_head=
, Some(drop_rcu_box::<T, A>)) };
> > =A0=A0=A0=A0=A0=A0=A0=A0 } else {
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // SAFETY: All users will be gone =
in an rcu grace period.
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // TODO: We are luckily since `kvfre=
e_call_rcu()` works on both kmalloc and vmalloc,
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // maybe a new `Allocator` method is=
 needed.
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 unsafe { bindings::kvfree_call_rcu=
(rcu_head, self.0.as_ptr().cast()) };
> > =A0=A0=A0=A0=A0=A0=A0=A0 }
> > =A0=A0=A0=A0 }
> > @@ -135,11 +149,35 @@ fn drop(&mut self) {
> > =A0/// # Safety
> > =A0///
> > =A0/// `head` references the `rcu_head` field of an `RcuBoxInner<T>` th=
at has no references to it.
> > -/// Ownership of the `KBox<RcuBoxInner<T>>` must be passed.
> > -unsafe extern "C" fn drop_rcu_box<T>(head: *mut bindings::callback_hea=
d) {
> > +/// Ownership of the `Box<RcuBoxInner<T>, A>` must be passed.
> > +unsafe extern "C" fn drop_rcu_box<T, A: Allocator>(head: *mut bindings=
::callback_head) {
> > =A0=A0=A0=A0 // SAFETY: Caller provides a pointer to the `rcu_head` fie=
ld of a `RcuBoxInner<T>`.
> > =A0=A0=A0=A0 let box_inner =3D unsafe { crate::container_of!(head, RcuB=
oxInner<T>, rcu_head) };
> > =A0
> > =A0=A0=A0=A0 // SAFETY: Caller ensures exclusive access and passed owne=
rship.
> > -=A0=A0=A0 drop(unsafe { KBox::from_raw(box_inner) });
> > +=A0=A0=A0 drop(unsafe { Box::<_, A>::from_raw(box_inner) });
> > +}
> > +
> > +#[kunit_tests(rust_rcu_box)]
> > +mod tests {
> > +=A0=A0=A0 use super::*;
> > +
> > +=A0=A0=A0 #[test]
> > +=A0=A0=A0 fn rcu_box_basic() -> Result {
> > +=A0=A0=A0=A0=A0=A0=A0 let rb =3D RcuBox::<_, alloc::allocator::Kmalloc=
>::new(42i32, alloc::flags::GFP_KERNEL)?;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0 assert_eq!(*rb, 42);
> > +=A0=A0=A0=A0=A0=A0=A0 assert_eq!(*rb.with_rcu(&Guard::new()), 42);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0 drop(rb);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0 let rb =3D RcuBox::<_, alloc::allocator::Vmalloc=
>::new(42i32, alloc::flags::GFP_KERNEL)?;
> > +
> > +=A0=A0=A0=A0=A0=A0=A0 assert_eq!(*rb, 42);
> > +=A0=A0=A0=A0=A0=A0=A0 assert_eq!(*rb.with_rcu(&Guard::new()), 42);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0 drop(rb);
> > +
> > +=A0=A0=A0=A0=A0=A0=A0 Ok(())
> > +=A0=A0=A0 }
> > =A0}
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
